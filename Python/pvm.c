#include "Python.h"
#include "marshal.h"

// run pyc/pyo file directly with PVM
//static PyObject *run_pyo(FILE *fp, const char *filename, PyObject *globals, PyObject *locals);
//static int RunMainFromImporter(char *filename);

static PyObject *run_pyo(FILE *fp, const char *filename, PyObject *globals, PyObject *locals)
{
    PyCodeObject *co;
    PyObject *v;
    long magic;
    long PyImport_GetMagicNumber(void);

    magic = PyMarshal_ReadLongFromFile(fp);
    if (magic != PyImport_GetMagicNumber()) {
        PyErr_SetString(PyExc_RuntimeError,
            "Bad magic number in .pyc file");
        return NULL;
    }
    (void)PyMarshal_ReadLongFromFile(fp);
    v = PyMarshal_ReadLastObjectFromFile(fp);
    fclose(fp);
    if (v == NULL || !PyCode_Check(v)) {
        Py_XDECREF(v);
        PyErr_SetString(PyExc_RuntimeError,
            "Bad code object in .pyc file");
        return NULL;
    }
    co = (PyCodeObject *)v;
    v = PyEval_EvalCode(co, globals, locals);
    Py_DECREF(co);
    return v;
}

static int RunModule(char *module, int set_argv0)
{
    PyObject *runpy, *runmodule, *runargs, *result;
    runpy = PyImport_ImportModule("runpy");
    if (runpy == NULL) {
        fprintf(stderr, "Could not import runpy module\n");
        return -1;
    }
    runmodule = PyObject_GetAttrString(runpy, "_run_module_as_main");
    if (runmodule == NULL) {
        fprintf(stderr, "Could not access runpy._run_module_as_main\n");
        Py_DECREF(runpy);
        return -1;
    }
    runargs = Py_BuildValue("(si)", module, set_argv0);
    if (runargs == NULL) {
        fprintf(stderr,
            "Could not create arguments for runpy._run_module_as_main\n");
        Py_DECREF(runpy);
        Py_DECREF(runmodule);
        return -1;
    }
    result = PyObject_Call(runmodule, runargs, NULL);
    if (result == NULL) {
        PyErr_Print();
    }
    Py_DECREF(runpy);
    Py_DECREF(runmodule);
    Py_DECREF(runargs);
    if (result == NULL) {
        return -1;
    }
    Py_DECREF(result);
    return 0;
}

static int RunMainFromImporter(char *filename)
{
    PyObject *argv0 = NULL, *importer = NULL;

    if ((argv0 = PyString_FromString(filename)) &&
        (importer = PyImport_GetImporter(argv0)) &&
        (importer->ob_type != &PyNullImporter_Type))
    {
        /* argv0 is usable as an import source, so
        put it in sys.path[0] and import __main__ */
        PyObject *sys_path = NULL;
        if ((sys_path = PySys_GetObject("path")) &&
            !PyList_SetItem(sys_path, 0, argv0))
        {
            Py_INCREF(argv0);
            Py_DECREF(importer);
            sys_path = NULL;
            return RunModule("__main__", 0) != 0;
        }
    }
    Py_XDECREF(argv0);
    Py_XDECREF(importer);
    if (PyErr_Occurred()) {
        PyErr_Print();
        return 1;
    }
    return -1;
}

int main(int argc, char **argv)
{
    PyObject *m, *d, *v;
    int set_file_name = 0, ret;
    FILE* fp;
    int sts;
    if (argc<2){
        printf("Please provide a pyo file as:\n\tpvm xxx.pyo");
        return 1;
    }
    
    Py_SetProgramName(argv[0]);

    char* filename = argv[1];

    if ((fp = fopen(filename, "rb")) == NULL) {
        fprintf(stderr, "python: Can't open .pyo file\n");
        return -1;
    }

    Py_Initialize();//<--->Py_Finalize();

    int _PyOS_optind = 1;
    PySys_SetArgv(argc - _PyOS_optind, argv + _PyOS_optind);

    sts = RunMainFromImporter(filename);

    if (sts == -1) {
        /* call pending calls like signal handlers (SIGINT) */
        if (Py_MakePendingCalls() == -1) {
            PyErr_Print();
            sts = 1;
        }
    }

    m = PyImport_AddModule("__main__");
    if (m == NULL)
        return -1;
    Py_INCREF(m);
    d = PyModule_GetDict(m);
    if (PyDict_GetItemString(d, "__file__") == NULL) {
        PyObject *f = PyString_FromString(filename);
        if (f == NULL)
            goto Py_Main_Backend_done;
        if (PyDict_SetItemString(d, "__file__", f) < 0) {
            Py_DECREF(f);
            goto Py_Main_Backend_done;
        }
        set_file_name = 1;
        Py_DECREF(f);
    }
    //printf("=================================\n");
    v = run_pyo(fp, filename, d, d);//
    //printf("=================================\n");
    if (v == NULL) {
        PyErr_Print();
        ret = -1;
    }else{
        Py_DECREF(v);
        /*if (Py_FlushLine()){
            PyErr_Clear();
        }*/
        ret = 0;
    }
Py_Main_Backend_done:
    if (set_file_name && PyDict_DelItemString(d, "__file__"))
        PyErr_Clear();
    Py_Finalize();
    return ret;
}
