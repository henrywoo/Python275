#include "Python.h"
#include "marshal.h"

static PyObject *run_pyo(FILE *fp, const char *filename, PyObject *globals, PyObject *locals);
// run pyc/pyo file directly with PVM
int 
Py_Main_Backend(int argc, char **argv){
    PyObject *m, *d, *v;
    int set_file_name = 0, ret;
    FILE* fp;

    char* filename=argv[1];
    if ((fp = fopen(filename, "rb")) == NULL) {
        fprintf(stderr, "python: Can't open .pyc file\n");
        return -1;
    }
    Py_Initialize();//<--->Py_Finalize();
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
    Py_OptimizeFlag = 1;
    v = run_pyo(fp, filename, d, d);//
    if (v == NULL) {
        PyErr_Print();
        ret = -1;
    }else{
        Py_DECREF(v);
        ret = 0;
    }
Py_Main_Backend_done:
    if (set_file_name && PyDict_DelItemString(d, "__file__"))
        PyErr_Clear();
    Py_Finalize();
    return ret;
}

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
    (void) PyMarshal_ReadLongFromFile(fp);
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
