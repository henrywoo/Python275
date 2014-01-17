#include "Python.h"

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
    v = run_pyc_file(fp, filename, d, d, NULL);//
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
