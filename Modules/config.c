/* Generated automatically from ./Modules/config.c.in by makesetup. */
/* -*- C -*- ***********************************************
Copyright (c) 2000, BeOpen.com.
Copyright (c) 1995-2000, Corporation for National Research Initiatives.
Copyright (c) 1990-1995, Stichting Mathematisch Centrum.
All rights reserved.

See the file "Misc/COPYRIGHT" for information on usage and
redistribution of this file, and for a DISCLAIMER OF ALL WARRANTIES.
******************************************************************/

/* Module configuration */

/* !!! !!! !!! This file is edited by the makesetup script !!! !!! !!! */

/* This file contains the table of built-in modules.
   See init_builtin() in import.c. */

#include "Python.h"

#ifdef __cplusplus
extern "C" {
#endif


extern void initthread(void);
extern void initsignal(void);
extern void initposix(void);
extern void initerrno(void);
extern void initpwd(void);
extern void init_sre(void);
extern void init_codecs(void);
extern void init_weakref(void);
extern void initzipimport(void);
extern void initarray(void);
extern void initmath(void);
extern void init_struct(void);
extern void inittime(void);
extern void init_random(void);
extern void init_heapq(void);
extern void initstrop(void);
extern void initdatetime(void);
extern void initselect(void);
extern void init_socket(void);
extern void init_md5(void);
extern void init_sha(void);
extern void init_sha256(void);
extern void init_sha512(void);

/* -- ADDMODULE MARKER 1 -- */

extern void PyMarshal_Init(void);
extern void initimp(void);
extern void initgc(void);
//extern void init_ast(void);
extern void _PyWarnings_Init(void);

struct _inittab _PyImport_Inittab[] = {

	{"thread", initthread},
	{"signal", initsignal},
	{"posix", initposix},
	{"errno", initerrno},
	{"pwd", initpwd},
	{"_sre", init_sre},
	{"_codecs", init_codecs},
	{"_weakref", init_weakref},
	{"zipimport", initzipimport},
	{"array", initarray},
	{"math", initmath},
	{"_struct", init_struct},
	{"time", inittime},
	{"_random", init_random},
	{"_heapq", init_heapq},
	{"strop", initstrop},
	{"datetime", initdatetime},
	{"select", initselect},
	{"_socket", init_socket},
	{"_md5", init_md5},
	{"_sha", init_sha},
	{"_sha256", init_sha256},
	{"_sha512", init_sha512},

/* -- ADDMODULE MARKER 2 -- */

    /* This module lives in marshal.c */
    {"marshal", PyMarshal_Init},

    /* This lives in import.c */
    {"imp", initimp},

    /* This lives in Python/Python-ast.c */
    //{"_ast", init_ast},

    /* These entries are here for sys.builtin_module_names */
    {"__main__", NULL},
    {"__builtin__", NULL},
    {"sys", NULL},
    {"exceptions", NULL},

    /* This lives in gcmodule.c */
    {"gc", initgc},

    /* This lives in _warnings.c */
    {"_warnings", _PyWarnings_Init},

    /* Sentinel */
    {0, 0}
};


#ifdef __cplusplus
}
#endif
