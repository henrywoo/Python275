# Generated automatically from Makefile.pre by makesetup.
# Top-level Makefile for Python
#
# As distributed, this file is called Makefile.pre.in; it is processed
# into the real Makefile by running the script ./configure, which
# replaces things like @spam@ with values appropriate for your system.
# This means that if you edit Makefile, your changes get lost the next
# time you run the configure script.  Ideally, you can do:
#
#	./configure
#	make
#	make test
#	make install
#
# If you have a previous version of Python installed that you don't
# want to overwrite, you can use "make altinstall" instead of "make
# install".  Refer to the "Installing" section in the README file for
# additional details.
#
# See also the section "Build instructions" in the README file.

# === Variables set by makesetup ===

MODOBJS=          Modules/threadmodule.o  Modules/signalmodule.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o  Modules/_weakref.o  Modules/zipimport.o  Modules/arraymodule.o  Modules/mathmodule.o Modules/_math.o  Modules/_struct.o  Modules/timemodule.o  Modules/operator.o  Modules/_randommodule.o  Modules/_collectionsmodule.o  Modules/_heapqmodule.o  Modules/itertoolsmodule.o  Modules/stropmodule.o  Modules/_functoolsmodule.o  Modules/datetimemodule.o  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o  Modules/fcntlmodule.o  Modules/spwdmodule.o  Modules/grpmodule.o  Modules/selectmodule.o  Modules/mmapmodule.o  Modules/_csv.o  Modules/socketmodule.o Modules/timemodule.o  Modules/_ssl.o  Modules/md5module.o Modules/md5.o  Modules/shamodule.o  Modules/sha256module.o  Modules/sha512module.o  Modules/binascii.o  Modules/cStringIO.o  Modules/cPickle.o  Modules/zlibmodule.o  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o
MODLIBS=        $(LOCALMODLIBS) $(BASEMODLIBS)

# === Variables set by configure
VERSION=	2.7
srcdir=		.

abs_srcdir=	/nfs/src/Python-2.7.5
abs_builddir=	/nfs/src/Python-2.7.5
build=		x86_64-unknown-linux-gnu
host=		x86_64-unknown-linux-gnu

CC=		gcc -pthread
CXX=		g++ -pthread
MAINCC=		$(CC)
LINKCC=		$(PURIFY) $(MAINCC)
AR=		ar
RANLIB=		ranlib
SVNVERSION=	svnversion $(srcdir)
HGVERSION=	
HGTAG=		
HGBRANCH=	

GNULD=          yes

# Shell used by make (some versions default to the login shell, which is bad)
SHELL=		/bin/sh

# Use this to make a link between python$(VERSION) and python in $(BINDIR)
LN=		ln

# Portable install script (configure doesn't always guess right)
INSTALL=	/usr/bin/install -c
INSTALL_PROGRAM=${INSTALL}
INSTALL_SCRIPT= ${INSTALL}
INSTALL_DATA=	${INSTALL} -m 644
# Shared libraries must be installed with executable mode on some systems;
# rather than figuring out exactly which, we always give them executable mode.
# Also, making them read-only seems to be a good idea...
INSTALL_SHARED= ${INSTALL} -m 555

MKDIR_P=	/bin/mkdir -p

MAKESETUP=      $(srcdir)/Modules/makesetup

# Compiler options
OPT=		-DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes
BASECFLAGS=	 -fno-strict-aliasing
#fuheng - strip
CFLAGS=		$(BASECFLAGS) -g -O2 $(OPT) $(EXTRA_CFLAGS) -s
# Both CPPFLAGS and LDFLAGS need to contain the shell's value for setup.py to
# be able to build extension modules using the directories specified in the
# environment variables
CPPFLAGS=	-g -I. -IInclude -I$(srcdir)/Include 
LDFLAGS=	
LDLAST=		
SGI_ABI=	
CCSHARED=	-fPIC
LINKFORSHARED=	-Xlinker -export-dynamic
ARFLAGS=	rc
# Extra C flags added for building the interpreter object files.
CFLAGSFORSHARED=
# C flags used for building the interpreter object files
PY_CFLAGS=	$(CFLAGS) $(CPPFLAGS) $(CFLAGSFORSHARED) -DPy_BUILD_CORE


# Machine-dependent subdirectories
MACHDEP=	linux2

# Multiarch directory (may be empty)
MULTIARCH=	x86_64-linux-gnu

# Install prefix for architecture-independent files
prefix=		/usr/local/py275

# Install prefix for architecture-dependent files
exec_prefix=	${prefix}

# Install prefix for data files
datarootdir=    ${prefix}/share

# Expanded directories
BINDIR=		${exec_prefix}/bin
LIBDIR=		${exec_prefix}/lib
MANDIR=		${datarootdir}/man
INCLUDEDIR=	${prefix}/include
CONFINCLUDEDIR=	$(exec_prefix)/include
SCRIPTDIR=	$(prefix)/lib

# Detailed destination directories
BINLIBDEST=	$(LIBDIR)/python$(VERSION)
LIBDEST=	$(SCRIPTDIR)/python$(VERSION)
INCLUDEPY=	$(INCLUDEDIR)/python$(VERSION)
CONFINCLUDEPY=	$(CONFINCLUDEDIR)/python$(VERSION)
LIBP=		$(LIBDIR)/python$(VERSION)

# Symbols used for using shared libraries
SO=		.so
LDSHARED=	$(CC) -shared $(LDFLAGS)
BLDSHARED=	$(CC) -shared $(LDFLAGS)
LDCXXSHARED=	$(CXX) -shared
DESTSHARED=	$(BINLIBDEST)/lib-dynload

# Executable suffix (.exe on Windows and Mac OS X)
EXE=		
BUILDEXE=	

# Short name and location for Mac OS X Python framework
UNIVERSALSDK=
PYTHONFRAMEWORK=	
PYTHONFRAMEWORKDIR=	no-framework
PYTHONFRAMEWORKPREFIX=	
PYTHONFRAMEWORKINSTALLDIR= 
# Deployment target selected during configure, to be checked
# by distutils. The export statement is needed to ensure that the
# deployment target is active during build.
MACOSX_DEPLOYMENT_TARGET=
#export MACOSX_DEPLOYMENT_TARGET

# Options to enable prebinding (for fast startup prior to Mac OS X 10.3)
OTHER_LIBTOOL_OPT=

# Environment to run shared python without installed libraries
RUNSHARED=       

# Modes for directories, executables and data files created by the
# install process.  Default to user-only-writable for all file types.
DIRMODE=	755
EXEMODE=	755
FILEMODE=	644

# configure script arguments
CONFIG_ARGS=	 '--prefix=/usr/local/py275' '--disable-shared' '--without-pydebug'


# Subdirectories with code
SRCDIRS= 	Parser Grammar Objects Python Modules Mac

# Other subdirectories
SUBDIRSTOO=	Include Lib Misc Demo

# Files and directories to be distributed
CONFIGFILES=	configure configure.ac acconfig.h pyconfig.h.in Makefile.pre.in
DISTFILES=	README ChangeLog $(CONFIGFILES)
DISTDIRS=	$(SUBDIRS) $(SUBDIRSTOO) Ext-dummy
DIST=		$(DISTFILES) $(DISTDIRS)


LIBRARY=	libpython$(VERSION).a
LDLIBRARY=      libpython$(VERSION).a
BLDLIBRARY=     $(LDLIBRARY)
DLLLIBRARY=	
LDLIBRARYDIR=   
INSTSONAME=	$(LDLIBRARY)


LIBS=		-lpthread -ldl  -lutil
LIBM=		-lm
LIBC=		
SYSLIBS=	$(LIBM) $(LIBC)
SHLIBS=		$(LIBS)

THREADOBJ=	Python/thread.o
DLINCLDIR=	.
DYNLOADFILE=	dynload_shlib.o
MACHDEP_OBJS=	
LIBOBJDIR=	Python/
LIBOBJS=	
UNICODE_OBJS=   Objects/unicodeobject.o Objects/unicodectype.o

PYTHON=		python$(EXE)
BUILDPYTHON=	python$(BUILDEXE)
BUILDPVM=	pvm$(BUILDEXE)

PYTHON_FOR_BUILD=./$(BUILDPYTHON) -E
_PYTHON_HOST_PLATFORM=
HOST_GNU_TYPE=  x86_64-unknown-linux-gnu

# The task to run while instrument when building the profile-opt target
PROFILE_TASK=	$(srcdir)/Tools/pybench/pybench.py -n 2 --with-gc --with-syscheck
#PROFILE_TASK=	$(srcdir)/Lib/test/regrtest.py

# === Definitions added by makesetup ===

LOCALMODLIBS=                               -L$(SSL)/lib -lssl -lcrypto         -lz 
BASEMODLIBS=
SSL=/usr/local/ssl
GLHACK=-Dclear=__GLclear
PYTHONPATH=$(COREPYTHONPATH)
COREPYTHONPATH=$(DESTPATH)$(SITEPATH)$(TESTPATH)$(MACHDEPPATH)$(EXTRAMACHDEPPATH)$(TKPATH)$(OLDPATH)
OLDPATH=:lib-old
TKPATH=:lib-tk
EXTRAMACHDEPPATH=
MACHDEPPATH=:plat-$(MACHDEP)
TESTPATH=
SITEPATH=
DESTPATH=
MACHDESTLIB=$(BINLIBDEST)
DESTLIB=$(LIBDEST)



##########################################################################
# Modules
MODULE_OBJS=	\
		Modules/config.o \
		Modules/getpath.o \
		Modules/main2.o \
		Modules/gcmodule.o \
#		Modules/main.o \

# Used of signalmodule.o is not available
SIGNAL_OBJS=	


##########################################################################
# Grammar
GRAMMAR_H=	Include/graminit.h
GRAMMAR_C=	Python/graminit.c
GRAMMAR_INPUT=	$(srcdir)/Grammar/Grammar


LIBFFI_INCLUDEDIR=	

##########################################################################
# Parser
PGEN=		Parser/pgen$(EXE)

PSRCS=		\
		Parser/acceler.c \
		Parser/grammar1.c \
		Parser/listnode.c \
		Parser/node.c \
		Parser/parser.c \
		Parser/parsetok.c \
		Parser/bitset.c \
		Parser/metagrammar.c \
		Parser/firstsets.c \
		Parser/grammar.c \
		Parser/pgen.c

POBJS=		\
		Parser/acceler.o \
		Parser/grammar1.o \
		Parser/listnode.o \
		Parser/node.o \
		Parser/parser.o \
		Parser/parsetok.o \
		Parser/bitset.o \
		Parser/metagrammar.o \
		Parser/firstsets.o \
		Parser/grammar.o \
		Parser/pgen.o

PARSER_OBJS=	$(POBJS) Parser/myreadline.o Parser/tokenizer.o

PGSRCS=		\
		Objects/obmalloc.c \
		Python/mysnprintf.c \
		Python/pyctype.c \
		Parser/tokenizer_pgen.c \
		Parser/printgrammar.c \
		Parser/pgenmain.c

PGOBJS=		\
		Objects/obmalloc.o \
		Python/mysnprintf.o \
		Python/pyctype.o \
		Parser/tokenizer_pgen.o \
		Parser/printgrammar.o \
		Parser/pgenmain.o

PARSER_HEADERS= \
		Parser/parser.h \
		Parser/tokenizer.h

PGENSRCS=	$(PSRCS) $(PGSRCS)
PGENOBJS=	$(POBJS) $(PGOBJS)

##########################################################################
# AST
AST_H_DIR=	Include
AST_H=		$(AST_H_DIR)/Python-ast.h
AST_C_DIR=	Python
AST_C=		$(AST_C_DIR)/Python-ast.c
AST_ASDL=	$(srcdir)/Parser/Python.asdl

ASDLGEN_FILES=	$(srcdir)/Parser/asdl.py $(srcdir)/Parser/asdl_c.py
# XXX Note that a build now requires Python exist before the build starts
ASDLGEN=	$(srcdir)/Parser/asdl_c.py

##########################################################################
# Python
PYTHON_OBJS=	\
		Python/_warnings.o \
		Python/codecs.o \
		Python/errors.o \
		Python/frozen.o \
		Python/frozenmain.o \
		Python/future.o \
		Python/getargs.o \
		Python/getcopyright.o \
		Python/getplatform.o \
		Python/getversion.o \
		Python/import.o \
		Python/importdl.o \
		Python/marshal.o \
		Python/modsupport.o \
		Python/mystrtoul.o \
		Python/mysnprintf.o \
		Python/peephole.o \
		Python/pyarena.o \
		Python/pyctype.o \
		Python/pyfpe.o \
		Python/pymath.o \
		Python/pystate.o \
		Python/pythonrun.o \
		Python/random.o \
		Python/structmember.o \
		Python/symtable.o \
		Python/sysmodule.o \
		Python/traceback.o \
		Python/getopt.o \
		Python/pystrcmp.o \
		Python/pystrtod.o \
		Python/dtoa.o \
		Python/formatter_unicode.o \
		Python/formatter_string.o \
		Python/$(DYNLOADFILE) \
		$(LIBOBJS) \
		$(MACHDEP_OBJS) \
		$(THREADOBJ) \
		Python/bltinmodule.o \
		Python/ceval.o \
		Python/getcompiler.o \
#		Python/Python-ast.o \
#		Python/graminit.o \
#		Python/asdl.o \
#		Python/ast.o \
#		Python/compile.o \


##########################################################################
# Objects
OBJECT_OBJS=	\
		Objects/abstract.o \
		Objects/boolobject.o \
		Objects/bufferobject.o \
		Objects/bytes_methods.o \
		Objects/bytearrayobject.o \
		Objects/capsule.o \
		Objects/cellobject.o \
		Objects/classobject.o \
		Objects/cobject.o \
		Objects/codeobject.o \
		Objects/complexobject.o \
		Objects/descrobject.o \
		Objects/enumobject.o \
		Objects/exceptions.o \
		Objects/genobject.o \
		Objects/fileobject.o \
		Objects/floatobject.o \
		Objects/frameobject.o \
		Objects/funcobject.o \
		Objects/intobject.o \
		Objects/iterobject.o \
		Objects/listobject.o \
		Objects/longobject.o \
		Objects/dictobject.o \
		Objects/memoryobject.o \
		Objects/methodobject.o \
		Objects/moduleobject.o \
		Objects/object.o \
		Objects/obmalloc.o \
		Objects/rangeobject.o \
		Objects/setobject.o \
		Objects/sliceobject.o \
		Objects/stringobject.o \
		Objects/structseq.o \
		Objects/tupleobject.o \
		Objects/typeobject.o \
		Objects/weakrefobject.o \
		$(UNICODE_OBJS)


##########################################################################
# objects that get linked into the Python library
LIBRARY_OBJS=	\
		Modules/getbuildinfo.o \
		$(PARSER_OBJS) \
		$(OBJECT_OBJS) \
		$(PYTHON_OBJS) \
		$(MODULE_OBJS) \
		$(SIGNAL_OBJS) \
		$(MODOBJS)

#########################################################################
# Rules

# Default target
all:		build_all
#build_all:	$(BUILDPYTHON) $(BUILDPVM) oldsharedmods sharedmods gdbhooks
build_all:	$(BUILDPVM) oldsharedmods sharedmods gdbhooks

# Compile a binary with gcc profile guided optimization.
profile-opt:
	@echo "Building with support for profile generation:"
	$(MAKE) clean
	$(MAKE) build_all_generate_profile
	@echo "Running benchmark to generate profile data:"
	$(MAKE) profile-removal
	$(MAKE) run_profile_task
	@echo "Rebuilding with profile guided optimizations:"
	$(MAKE) clean
	$(MAKE) build_all_use_profile

build_all_generate_profile:
	$(MAKE) all CFLAGS="$(CFLAGS) -fprofile-generate" LIBS="$(LIBS) -lgcov"

run_profile_task:
	: # FIXME: can't run for a cross build
	./$(BUILDPYTHON) $(PROFILE_TASK)

build_all_use_profile:
	$(MAKE) all CFLAGS="$(CFLAGS) -fprofile-use"

coverage:
	@echo "Building with support for coverage checking:"
	$(MAKE) clean
	$(MAKE) all CFLAGS="$(CFLAGS) -O0 -pg -fprofile-arcs -ftest-coverage" LIBS="$(LIBS) -lgcov"


# Build the interpreter
$(BUILDPYTHON):	Modules/python.o $(LIBRARY) $(LDLIBRARY)
		$(LINKCC) $(LDFLAGS) $(LINKFORSHARED) -o $@ \
			Modules/python.o \
			$(BLDLIBRARY) $(LIBS) $(MODLIBS) $(SYSLIBS) $(LDLAST)

$(BUILDPVM):	Modules/pvm.o $(LIBRARY) $(LDLIBRARY)
		$(LINKCC) $(LDFLAGS) $(LINKFORSHARED) -o $@ \
			Modules/pvm.o \
			$(BLDLIBRARY) $(LIBS) $(MODLIBS) $(SYSLIBS) $(LDLAST)

platform: $(BUILDPYTHON) pybuilddir.txt
	$(RUNSHARED) $(PYTHON_FOR_BUILD) -c 'import sys ; from sysconfig import get_platform ; print get_platform()+"-"+sys.version[0:3]' >platform

# Create build directory and generate the sysconfig build-time data there.
# pybuilddir.txt contains the name of the build dir and is used for
# sys.path fixup -- see Modules/getpath.c.
pybuilddir.txt: $(BUILDPYTHON)
		$(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig --generate-posix-vars

# Build the shared modules
# Under GNU make, MAKEFLAGS are sorted and normalized; the 's' for
# -s, --silent or --quiet is always the first char.
# Under BSD make, MAKEFLAGS might be " -s -v x=y".
sharedmods: $(BUILDPYTHON) pybuilddir.txt
	@case "$$MAKEFLAGS" in \
	    *\ -s*|s*) quiet="-q";; \
	    *) quiet="";; \
	esac; \
	$(RUNSHARED) CC='$(CC)' LDSHARED='$(BLDSHARED)' OPT='$(OPT)' \
		$(PYTHON_FOR_BUILD) $(srcdir)/setup.py $$quiet build

# Build static library
# avoid long command lines, same as LIBRARY_OBJS
$(LIBRARY): $(LIBRARY_OBJS)
	-rm -f $@
	$(AR) $(ARFLAGS) $@ Modules/getbuildinfo.o
	$(AR) $(ARFLAGS) $@ $(PARSER_OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJECT_OBJS)
	$(AR) $(ARFLAGS) $@ $(PYTHON_OBJS)
	$(AR) $(ARFLAGS) $@ $(MODULE_OBJS) $(SIGNAL_OBJS)
	$(AR) $(ARFLAGS) $@ $(MODOBJS)
	$(RANLIB) $@

libpython$(VERSION).so: $(LIBRARY_OBJS)
	if test $(INSTSONAME) != $(LDLIBRARY); then \
		$(BLDSHARED) -Wl,-h$(INSTSONAME) -o $(INSTSONAME) $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \
		$(LN) -f $(INSTSONAME) $@; \
	else \
		$(BLDSHARED) -o $@ $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \
	fi

libpython$(VERSION).dylib: $(LIBRARY_OBJS)
	 $(CC) -dynamiclib -Wl,-single_module $(LDFLAGS) -undefined dynamic_lookup -Wl,-install_name,$(prefix)/lib/libpython$(VERSION).dylib -Wl,-compatibility_version,$(VERSION) -Wl,-current_version,$(VERSION) -o $@ $(LIBRARY_OBJS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST); \


libpython$(VERSION).sl: $(LIBRARY_OBJS)
	$(LDSHARED) -o $@ $(LIBRARY_OBJS) $(MODLIBS) $(SHLIBS) $(LIBC) $(LIBM) $(LDLAST)

# Copy up the gdb python hooks into a position where they can be automatically
# loaded by gdb during Lib/test/test_gdb.py
#
# Distributors are likely to want to install this somewhere else e.g. relative
# to the stripped DWARF data for the shared library.
gdbhooks: $(BUILDPYTHON)-gdb.py

SRC_GDB_HOOKS=$(srcdir)/Tools/gdb/libpython.py
$(BUILDPYTHON)-gdb.py: $(SRC_GDB_HOOKS)
	$(INSTALL_DATA) $(SRC_GDB_HOOKS) $(BUILDPYTHON)-gdb.py

# This rule is here for OPENSTEP/Rhapsody/MacOSX. It builds a temporary
# minimal framework (not including the Lib directory and such) in the current
# directory.
RESSRCDIR=Mac/Resources/framework
$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/$(PYTHONFRAMEWORK): \
		$(LIBRARY) \
		$(RESSRCDIR)/Info.plist
	$(INSTALL) -d -m $(DIRMODE) $(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)
	$(CC) -o $(LDLIBRARY) $(LDFLAGS)  -dynamiclib \
		-all_load $(LIBRARY) -Wl,-single_module \
		-install_name $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Versions/$(VERSION)/$(PYTHONFRAMEWORK) \
		-compatibility_version $(VERSION) \
		-current_version $(VERSION);
	$(INSTALL) -d -m $(DIRMODE)  \
		$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/Resources/English.lproj
	$(INSTALL_DATA) $(RESSRCDIR)/Info.plist \
		$(PYTHONFRAMEWORKDIR)/Versions/$(VERSION)/Resources/Info.plist
	$(LN) -fsn $(VERSION) $(PYTHONFRAMEWORKDIR)/Versions/Current
	$(LN) -fsn Versions/Current/$(PYTHONFRAMEWORK) $(PYTHONFRAMEWORKDIR)/$(PYTHONFRAMEWORK)
	$(LN) -fsn Versions/Current/Headers $(PYTHONFRAMEWORKDIR)/Headers
	$(LN) -fsn Versions/Current/Resources $(PYTHONFRAMEWORKDIR)/Resources

# This rule builds the Cygwin Python DLL and import library if configured
# for a shared core library; otherwise, this rule is a noop.
$(DLLLIBRARY) libpython$(VERSION).dll.a: $(LIBRARY_OBJS)
	if test -n "$(DLLLIBRARY)"; then \
		$(LDSHARED) -Wl,--out-implib=$@ -o $(DLLLIBRARY) $^ \
			$(LIBS) $(MODLIBS) $(SYSLIBS) $(LDLAST); \
	else true; \
	fi


oldsharedmods: $(SHAREDMODS)


Makefile Modules/config.c: Makefile.pre \
				$(srcdir)/Modules/config.c.in \
				$(MAKESETUP) \
				Modules/Setup.config \
				Modules/Setup \
				Modules/Setup.local
	$(SHELL) $(MAKESETUP) -c $(srcdir)/Modules/config.c.in \
				-s Modules \
				Modules/Setup.config \
				Modules/Setup.local \
				Modules/Setup
	@mv config.c Modules
	@echo "The Makefile was updated, you may need to re-run make."


Modules/Setup: $(srcdir)/Modules/Setup.dist
	@if test -f Modules/Setup; then \
		echo "-----------------------------------------------"; \
		echo "Modules/Setup.dist is newer than Modules/Setup;"; \
		echo "check to make sure you have all the updates you"; \
		echo "need in your Modules/Setup file."; \
		echo "Usually, copying Modules/Setup.dist to Modules/Setup will work."; \
		echo "-----------------------------------------------"; \
	fi

############################################################################
# Special rules for object files

Modules/getbuildinfo.o: $(PARSER_OBJS) \
		$(OBJECT_OBJS) \
		$(PYTHON_OBJS) \
		$(MODULE_OBJS) \
		$(SIGNAL_OBJS) \
		$(MODOBJS) \
		$(srcdir)/Modules/getbuildinfo.c
	$(CC) -c $(PY_CFLAGS) \
	      -DSVNVERSION="\"`LC_ALL=C $(SVNVERSION)`\"" \
	      -DHGVERSION="\"`LC_ALL=C $(HGVERSION)`\"" \
	      -DHGTAG="\"`LC_ALL=C $(HGTAG)`\"" \
	      -DHGBRANCH="\"`LC_ALL=C $(HGBRANCH)`\"" \
	      -o $@ $(srcdir)/Modules/getbuildinfo.c

Modules/getpath.o: $(srcdir)/Modules/getpath.c Makefile
	$(CC) -c $(PY_CFLAGS) -DPYTHONPATH='"$(PYTHONPATH)"' \
		-DPREFIX='"$(prefix)"' \
		-DEXEC_PREFIX='"$(exec_prefix)"' \
		-DVERSION='"$(VERSION)"' \
		-DVPATH='"$(VPATH)"' \
		-o $@ $(srcdir)/Modules/getpath.c

Modules/python.o: $(srcdir)/Modules/python.c
	$(MAINCC) -c $(PY_CFLAGS) -o $@ $(srcdir)/Modules/python.c

Modules/pvm.o: $(srcdir)/Modules/pvm.c
	$(MAINCC) -c $(PY_CFLAGS) -o $@ $(srcdir)/Modules/pvm.c

Modules/posixmodule.o: $(srcdir)/Modules/posixmodule.c $(srcdir)/Modules/posixmodule.h

Modules/grpmodule.o: $(srcdir)/Modules/grpmodule.c $(srcdir)/Modules/posixmodule.h

Modules/pwdmodule.o: $(srcdir)/Modules/pwdmodule.c $(srcdir)/Modules/posixmodule.h

$(GRAMMAR_H): $(GRAMMAR_INPUT) $(PGENSRCS)
		@$(MKDIR_P) Include
		$(MAKE) $(PGEN)
		$(PGEN) $(GRAMMAR_INPUT) $(GRAMMAR_H) $(GRAMMAR_C)
$(GRAMMAR_C): $(GRAMMAR_H) $(GRAMMAR_INPUT) $(PGENSRCS)
		$(MAKE) $(GRAMMAR_H)
		touch $(GRAMMAR_C)

$(PGEN):	$(PGENOBJS)
		$(CC) $(OPT) $(LDFLAGS) $(PGENOBJS) $(LIBS) -o $(PGEN)

Parser/grammar.o:	$(srcdir)/Parser/grammar.c \
				$(srcdir)/Include/token.h \
				$(srcdir)/Include/grammar.h
Parser/metagrammar.o:	$(srcdir)/Parser/metagrammar.c

Parser/tokenizer_pgen.o:	$(srcdir)/Parser/tokenizer.c

Parser/pgenmain.o:	$(srcdir)/Include/parsetok.h

$(AST_H): $(AST_ASDL) $(ASDLGEN_FILES)
	$(MKDIR_P) $(AST_H_DIR)
	$(ASDLGEN) -h $(AST_H_DIR) $(AST_ASDL)

$(AST_C): $(AST_ASDL) $(ASDLGEN_FILES)
	$(MKDIR_P) $(AST_C_DIR)
	$(ASDLGEN) -c $(AST_C_DIR) $(AST_ASDL)

#Python/compile.o Python/symtable.o Python/ast.o: $(GRAMMAR_H) $(AST_H)

Python/getplatform.o: $(srcdir)/Python/getplatform.c
		$(CC) -c $(PY_CFLAGS) -DPLATFORM='"$(MACHDEP)"' -o $@ $(srcdir)/Python/getplatform.c

Python/importdl.o: $(srcdir)/Python/importdl.c
		$(CC) -c $(PY_CFLAGS) -I$(DLINCLDIR) -o $@ $(srcdir)/Python/importdl.c

Objects/unicodectype.o:	$(srcdir)/Objects/unicodectype.c \
				$(srcdir)/Objects/unicodetype_db.h

STRINGLIB_HEADERS= \
		$(srcdir)/Include/bytes_methods.h \
		$(srcdir)/Objects/stringlib/count.h \
		$(srcdir)/Objects/stringlib/ctype.h \
		$(srcdir)/Objects/stringlib/fastsearch.h \
		$(srcdir)/Objects/stringlib/find.h \
		$(srcdir)/Objects/stringlib/formatter.h \
		$(srcdir)/Objects/stringlib/partition.h \
		$(srcdir)/Objects/stringlib/split.h \
		$(srcdir)/Objects/stringlib/stringdefs.h \
		$(srcdir)/Objects/stringlib/string_format.h \
		$(srcdir)/Objects/stringlib/transmogrify.h \
		$(srcdir)/Objects/stringlib/unicodedefs.h \
		$(srcdir)/Objects/stringlib/localeutil.h

Objects/unicodeobject.o: $(srcdir)/Objects/unicodeobject.c \
				$(STRINGLIB_HEADERS)

Objects/bytearrayobject.o: $(srcdir)/Objects/bytearrayobject.c \
				$(STRINGLIB_HEADERS)

Objects/stringobject.o: $(srcdir)/Objects/stringobject.c \
				$(STRINGLIB_HEADERS)

Python/formatter_unicode.o: $(srcdir)/Python/formatter_unicode.c \
				$(STRINGLIB_HEADERS)

Python/formatter_string.o: $(srcdir)/Python/formatter_string.c \
				$(STRINGLIB_HEADERS)

############################################################################
# Header files

PYTHON_HEADERS= \
		Include/Python-ast.h \
		Include/Python.h \
		Include/abstract.h \
		Include/asdl.h \
		Include/ast.h \
		Include/bitset.h \
		Include/boolobject.h \
		Include/bytearrayobject.h \
		Include/bytes_methods.h \
		Include/bytesobject.h \
		Include/bufferobject.h \
		Include/cellobject.h \
		Include/ceval.h \
		Include/classobject.h \
		Include/cobject.h \
		Include/code.h \
		Include/codecs.h \
		Include/compile.h \
		Include/complexobject.h \
		Include/descrobject.h \
		Include/dictobject.h \
		Include/dtoa.h \
		Include/enumobject.h \
		Include/errcode.h \
		Include/eval.h \
		Include/fileobject.h \
		Include/floatobject.h \
		Include/frameobject.h \
		Include/funcobject.h \
		Include/genobject.h \
		Include/import.h \
		Include/intobject.h \
		Include/intrcheck.h \
		Include/iterobject.h \
		Include/listobject.h \
		Include/longintrepr.h \
		Include/longobject.h \
		Include/marshal.h \
		Include/memoryobject.h \
		Include/metagrammar.h \
		Include/methodobject.h \
		Include/modsupport.h \
		Include/moduleobject.h \
		Include/node.h \
		Include/object.h \
		Include/objimpl.h \
		Include/opcode.h \
		Include/osdefs.h \
		Include/parsetok.h \
		Include/patchlevel.h \
		Include/pgen.h \
		Include/pgenheaders.h \
		Include/pyarena.h \
		Include/pycapsule.h \
		Include/pyctype.h \
		Include/pydebug.h \
		Include/pyerrors.h \
		Include/pyfpe.h \
		Include/pymath.h \
		Include/pygetopt.h \
		Include/pymem.h \
		Include/pyport.h \
		Include/pystate.h \
		Include/pystrcmp.h \
		Include/pystrtod.h \
		Include/pythonrun.h \
		Include/pythread.h \
		Include/rangeobject.h \
		Include/setobject.h \
		Include/sliceobject.h \
		Include/stringobject.h \
		Include/structmember.h \
		Include/structseq.h \
		Include/symtable.h \
		Include/sysmodule.h \
		Include/traceback.h \
		Include/tupleobject.h \
		Include/ucnhash.h \
		Include/unicodeobject.h \
		Include/warnings.h \
		Include/weakrefobject.h \
		pyconfig.h \
		$(PARSER_HEADERS)

$(LIBRARY_OBJS) $(MODOBJS) Modules/python.o: $(PYTHON_HEADERS)


######################################################################

# Test the interpreter (twice, once without .pyc files, once with)
# In the past, we've had problems where bugs in the marshalling or
# elsewhere caused bytecode read from .pyc files to behave differently
# than bytecode generated directly from a .py source file.  Sometimes
# the bytecode read from a .pyc file had the bug, sometimes the directly
# generated bytecode.  This is sometimes a very shy bug needing a lot of
# sample data.

TESTOPTS=	-l $(EXTRATESTOPTS)
TESTPROG=	$(srcdir)/Lib/test/regrtest.py
TESTPYTHON=	$(RUNSHARED) ./$(BUILDPYTHON) -Wd -3 -E -tt $(TESTPYTHONOPTS)
test:		all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(TESTOPTS)

testall:	all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		$(TESTPYTHON) $(srcdir)/Lib/compileall.py
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)

#  Run the unitests for both architectures in a Universal build on OSX
#  Must be run on an Intel box.
testuniversal:	all platform
		if [ `arch` != 'i386' ];then \
			echo "This can only be used on OSX/i386" ;\
			exit 1 ;\
		fi
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(TESTPYTHON) $(TESTPROG) -uall $(TESTOPTS)
		$(RUNSHARED) /usr/libexec/oah/translate ./$(BUILDPYTHON) -E -tt $(TESTPROG) -uall $(TESTOPTS)


# Like testall, but with a single pass only
# run an optional script to include some information about the build environment
buildbottest:	all platform
		-@if which pybuildbot.identify >/dev/null 2>&1; then \
			pybuildbot.identify "CC='$(CC)'" "CXX='$(CXX)'"; \
		fi
		$(TESTPYTHON) -R $(TESTPROG) -uall -rwW $(TESTOPTS)

QUICKTESTOPTS=	$(TESTOPTS) -x test_subprocess test_io test_lib2to3 \
		test_multibytecodec test_urllib2_localnet test_itertools \
		test_multiprocessing test_mailbox test_socket test_poll \
		test_select test_zipfile
quicktest:	all platform
		-find $(srcdir)/Lib -name '*.py[co]' -print | xargs rm -f
		-$(TESTPYTHON) $(TESTPROG) $(QUICKTESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(QUICKTESTOPTS)

MEMTESTOPTS=    $(QUICKTESTOPTS) -x test_dl test___all__ test_fork1 \
		test_longexp
memtest:	all platform
		-rm -f $(srcdir)/Lib/test/*.py[co]
		-$(TESTPYTHON) $(TESTPROG) $(MEMTESTOPTS)
		$(TESTPYTHON) $(TESTPROG) $(MEMTESTOPTS)

# Install everything
install:	 altinstall bininstall maninstall 

# Install almost everything without disturbing previous versions
altinstall:	 altbininstall libinstall inclinstall \
				libainstall altmaninstall \
                sharedinstall oldsharedinstall 

# Install shared libraries enabled by Setup
DESTDIRS=	$(exec_prefix) $(LIBDIR) $(BINLIBDEST) $(DESTSHARED)

oldsharedinstall: $(DESTSHARED) $(SHAREDMODS)
		@for i in X $(SHAREDMODS); do \
		  if test $$i != X; then \
		    echo $(INSTALL_SHARED) $$i $(DESTSHARED)/`basename $$i`; \
		    $(INSTALL_SHARED) $$i $(DESTDIR)$(DESTSHARED)/`basename $$i`; \
		  fi; \
		done

$(DESTSHARED):
		@for i in $(DESTDIRS); \
		do \
			if test ! -d $(DESTDIR)$$i; then \
				echo "Creating directory $$i"; \
				$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
			else    true; \
			fi; \
		done


# Install the interpreter by creating a symlink chain:
#  $(PYTHON) -> python2 -> python$(VERSION))
# Also create equivalent chains for other installed files
bininstall:	altbininstall
	-if test -f $(DESTDIR)$(BINDIR)/$(PYTHON) -o -h $(DESTDIR)$(BINDIR)/$(PYTHON); \
	then rm -f $(DESTDIR)$(BINDIR)/$(PYTHON); \
	else true; \
	fi
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python2$(EXE) $(PYTHON))
	-rm -f $(DESTDIR)$(BINDIR)/python2$(EXE)
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python$(VERSION)$(EXE) python2$(EXE))
	-rm -f $(DESTDIR)$(BINDIR)/python2-config
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python$(VERSION)-config python2-config)
	-rm -f $(DESTDIR)$(BINDIR)/python-config
	(cd $(DESTDIR)$(BINDIR); $(LN) -s python2-config python-config)
	-test -d $(DESTDIR)$(LIBPC) || $(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$(LIBPC)
	-rm -f $(DESTDIR)$(LIBPC)/python2.pc
	(cd $(DESTDIR)$(LIBPC); $(LN) -s python-$(VERSION).pc python2.pc)
	-rm -f $(DESTDIR)$(LIBPC)/python.pc
	(cd $(DESTDIR)$(LIBPC); $(LN) -s python2.pc python.pc)

# Install the interpreter with $(VERSION) affixed
# This goes into $(exec_prefix)
altbininstall:	$(BUILDPYTHON)
	@for i in $(BINDIR) $(LIBDIR); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(INSTALL_PROGRAM) $(BUILDPYTHON) $(DESTDIR)$(BINDIR)/python$(VERSION)$(EXE)
	if test -f $(LDLIBRARY); then \
		if test -n "$(DLLLIBRARY)" ; then \
			$(INSTALL_SHARED) $(DLLLIBRARY) $(DESTDIR)$(BINDIR); \
		else \
			$(INSTALL_SHARED) $(LDLIBRARY) $(DESTDIR)$(LIBDIR)/$(INSTSONAME); \
			if test $(LDLIBRARY) != $(INSTSONAME); then \
				(cd $(DESTDIR)$(LIBDIR); $(LN) -sf $(INSTSONAME) $(LDLIBRARY)) \
			fi \
		fi; \
	else	true; \
	fi

# Install the versioned manual page
altmaninstall:
	@for i in $(MANDIR) $(MANDIR)/man1; \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(INSTALL_DATA) $(srcdir)/Misc/python.man \
		$(DESTDIR)$(MANDIR)/man1/python$(VERSION).1

# Install the unversioned manual pages
maninstall:	altmaninstall
	-rm -f $(DESTDIR)$(MANDIR)/man1/python2.1
	(cd $(DESTDIR)$(MANDIR)/man1; $(LN) -s python$(VERSION).1 python2.1)
	-rm -f $(DESTDIR)$(MANDIR)/man1/python.1
	(cd $(DESTDIR)$(MANDIR)/man1; $(LN) -s python2.1 python.1)

# Install the library
PLATDIR=	plat-$(MACHDEP)
EXTRAPLATDIR= 
EXTRAMACHDEPPATH=
MACHDEPS=	$(PLATDIR) $(EXTRAPLATDIR)
XMLLIBSUBDIRS=  xml xml/dom xml/etree xml/parsers xml/sax
PLATMACDIRS= plat-mac plat-mac/Carbon plat-mac/lib-scriptpackages \
	plat-mac/lib-scriptpackages/_builtinSuites \
	plat-mac/lib-scriptpackages/CodeWarrior \
	plat-mac/lib-scriptpackages/Explorer \
	plat-mac/lib-scriptpackages/Finder \
	plat-mac/lib-scriptpackages/Netscape \
	plat-mac/lib-scriptpackages/StdSuites \
	plat-mac/lib-scriptpackages/SystemEvents \
	plat-mac/lib-scriptpackages/Terminal
PLATMACPATH=:plat-mac:plat-mac/lib-scriptpackages
LIBSUBDIRS=	lib-tk lib-tk/test lib-tk/test/test_tkinter \
		lib-tk/test/test_ttk site-packages test test/data \
		test/cjkencodings test/decimaltestdata test/xmltestdata test/subprocessdata \
		test/tracedmodules \
		encodings compiler hotshot \
		email email/mime email/test email/test/data \
		json json/tests \
		sqlite3 sqlite3/test \
		logging bsddb bsddb/test csv importlib wsgiref \
		lib2to3 lib2to3/fixes lib2to3/pgen2 lib2to3/tests \
		lib2to3/tests/data lib2to3/tests/data/fixers lib2to3/tests/data/fixers/myfixes \
		ctypes ctypes/test ctypes/macholib idlelib idlelib/Icons \
		distutils distutils/command distutils/tests $(XMLLIBSUBDIRS) \
		multiprocessing multiprocessing/dummy \
		unittest unittest/test \
		lib-old \
		curses pydoc_data $(MACHDEPS)
libinstall:	build_all $(srcdir)/Lib/$(PLATDIR) $(srcdir)/Modules/xxmodule.c
	@for i in $(SCRIPTDIR) $(LIBDEST); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@for d in $(LIBSUBDIRS); \
	do \
		a=$(srcdir)/Lib/$$d; \
		if test ! -d $$a; then continue; else true; fi; \
		b=$(LIBDEST)/$$d; \
		if test ! -d $(DESTDIR)$$b; then \
			echo "Creating directory $$b"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$b; \
		else	true; \
		fi; \
	done
	@for i in $(srcdir)/Lib/*.py `cat pybuilddir.txt`/_sysconfigdata.py $(srcdir)/Lib/*.doc $(srcdir)/Lib/*.egg-info ; \
	do \
		if test -x $$i; then \
			$(INSTALL_SCRIPT) $$i $(DESTDIR)$(LIBDEST); \
			echo $(INSTALL_SCRIPT) $$i $(LIBDEST); \
		else \
			$(INSTALL_DATA) $$i $(DESTDIR)$(LIBDEST); \
			echo $(INSTALL_DATA) $$i $(LIBDEST); \
		fi; \
	done
	@for d in $(LIBSUBDIRS); \
	do \
		a=$(srcdir)/Lib/$$d; \
		if test ! -d $$a; then continue; else true; fi; \
		if test `ls $$a | wc -l` -lt 1; then continue; fi; \
		b=$(LIBDEST)/$$d; \
		for i in $$a/*; \
		do \
			case $$i in \
			*CVS) ;; \
			*.py[co]) ;; \
			*.orig) ;; \
			*~) ;; \
			*) \
				if test -d $$i; then continue; fi; \
				if test -x $$i; then \
				    echo $(INSTALL_SCRIPT) $$i $$b; \
				    $(INSTALL_SCRIPT) $$i $(DESTDIR)$$b; \
				else \
				    echo $(INSTALL_DATA) $$i $$b; \
				    $(INSTALL_DATA) $$i $(DESTDIR)$$b; \
				fi;; \
			esac; \
		done; \
	done
	$(INSTALL_DATA) $(srcdir)/LICENSE $(DESTDIR)$(LIBDEST)/LICENSE.txt
	if test -d $(DESTDIR)$(LIBDEST)/distutils/tests; then \
		$(INSTALL_DATA) $(srcdir)/Modules/xxmodule.c \
			$(DESTDIR)$(LIBDEST)/distutils/tests ; \
	fi
	PYTHONPATH=$(DESTDIR)$(LIBDEST)  $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -tt $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST) -f \
		-x 'bad_coding|badsyntax|site-packages|lib2to3/tests/data' \
		$(DESTDIR)$(LIBDEST)
	PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -tt -O $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST) -f \
		-x 'bad_coding|badsyntax|site-packages|lib2to3/tests/data' \
		$(DESTDIR)$(LIBDEST)
	-PYTHONPATH=$(DESTDIR)$(LIBDEST)  $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -t $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST)/site-packages -f \
		-x badsyntax $(DESTDIR)$(LIBDEST)/site-packages
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -Wi -t -O $(DESTDIR)$(LIBDEST)/compileall.py \
		-d $(LIBDEST)/site-packages -f \
		-x badsyntax $(DESTDIR)$(LIBDEST)/site-packages
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -m lib2to3.pgen2.driver $(DESTDIR)$(LIBDEST)/lib2to3/Grammar.txt
	-PYTHONPATH=$(DESTDIR)$(LIBDEST) $(RUNSHARED) \
		$(PYTHON_FOR_BUILD) -m lib2to3.pgen2.driver $(DESTDIR)$(LIBDEST)/lib2to3/PatternGrammar.txt

# Create the PLATDIR source directory, if one wasn't distributed..
$(srcdir)/Lib/$(PLATDIR):
	mkdir $(srcdir)/Lib/$(PLATDIR)
	cp $(srcdir)/Lib/plat-generic/regen $(srcdir)/Lib/$(PLATDIR)/regen
	export PATH; PATH="`pwd`:$$PATH"; \
	export PYTHONPATH; PYTHONPATH="$(srcdir)/Lib:$(abs_builddir)/`cat pybuilddir.txt`"; \
	export DYLD_FRAMEWORK_PATH; DYLD_FRAMEWORK_PATH="`pwd`"; \
	export EXE; EXE="$(BUILDEXE)"; \
	if [ -n "$(MULTIARCH)" ]; then export MULTIARCH; MULTIARCH=$(MULTIARCH); fi; \
	export PYTHON_FOR_BUILD; \
	if [ "$(build)" = "$(host)" ]; then \
	  PYTHON_FOR_BUILD="$(BUILDPYTHON)"; \
	else \
	  PYTHON_FOR_BUILD="$(PYTHON_FOR_BUILD)"; \
	fi; \
	cd $(srcdir)/Lib/$(PLATDIR); $(RUNSHARED) ./regen

python-config: $(srcdir)/Misc/python-config.in
	# Substitution happens here, as the completely-expanded BINDIR
	# is not available in configure
	sed -e "s,@EXENAME@,$(BINDIR)/python$(VERSION)$(EXE)," < $(srcdir)/Misc/python-config.in >python-config

# Install the include files
INCLDIRSTOMAKE=$(INCLUDEDIR) $(CONFINCLUDEDIR) $(INCLUDEPY) $(CONFINCLUDEPY)
inclinstall:
	@for i in $(INCLDIRSTOMAKE); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@for i in $(srcdir)/Include/*.h; \
	do \
		echo $(INSTALL_DATA) $$i $(INCLUDEPY); \
		$(INSTALL_DATA) $$i $(DESTDIR)$(INCLUDEPY); \
	done
	$(INSTALL_DATA) pyconfig.h $(DESTDIR)$(CONFINCLUDEPY)/pyconfig.h

# Install the library and miscellaneous stuff needed for extending/embedding
# This goes into $(exec_prefix)
LIBPL=		$(LIBP)/config

# pkgconfig directory
LIBPC=		$(LIBDIR)/pkgconfig

libainstall:	all python-config
	@for i in $(LIBDIR) $(LIBP) $(LIBPL) $(LIBPC); \
	do \
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	@if test -d $(LIBRARY); then :; else \
		if test "$(PYTHONFRAMEWORKDIR)" = no-framework; then \
			if test "$(SO)" = .dll; then \
				$(INSTALL_DATA) $(LDLIBRARY) $(DESTDIR)$(LIBPL) ; \
			else \
				$(INSTALL_DATA) $(LIBRARY) $(DESTDIR)$(LIBPL)/$(LIBRARY) ; \
				$(RANLIB) $(DESTDIR)$(LIBPL)/$(LIBRARY) ; \
			fi; \
		else \
			echo Skip install of $(LIBRARY) - use make frameworkinstall; \
		fi; \
	fi
	$(INSTALL_DATA) Modules/config.c $(DESTDIR)$(LIBPL)/config.c
	$(INSTALL_DATA) Modules/python.o $(DESTDIR)$(LIBPL)/python.o
	$(INSTALL_DATA) $(srcdir)/Modules/config.c.in $(DESTDIR)$(LIBPL)/config.c.in
	$(INSTALL_DATA) Makefile $(DESTDIR)$(LIBPL)/Makefile
	$(INSTALL_DATA) Modules/Setup $(DESTDIR)$(LIBPL)/Setup
	$(INSTALL_DATA) Modules/Setup.local $(DESTDIR)$(LIBPL)/Setup.local
	$(INSTALL_DATA) Modules/Setup.config $(DESTDIR)$(LIBPL)/Setup.config
	$(INSTALL_DATA) Misc/python.pc $(DESTDIR)$(LIBPC)/python-$(VERSION).pc
	$(INSTALL_SCRIPT) $(srcdir)/Modules/makesetup $(DESTDIR)$(LIBPL)/makesetup
	$(INSTALL_SCRIPT) $(srcdir)/install-sh $(DESTDIR)$(LIBPL)/install-sh
	$(INSTALL_SCRIPT) python-config $(DESTDIR)$(BINDIR)/python$(VERSION)-config
	rm python-config
	@if [ -s Modules/python.exp -a \
		"`echo $(MACHDEP) | sed 's/^\(...\).*/\1/'`" = "aix" ]; then \
		echo; echo "Installing support files for building shared extension modules on AIX:"; \
		$(INSTALL_DATA) Modules/python.exp		\
				$(DESTDIR)$(LIBPL)/python.exp;		\
		echo; echo "$(LIBPL)/python.exp";		\
		$(INSTALL_SCRIPT) $(srcdir)/Modules/makexp_aix	\
				$(DESTDIR)$(LIBPL)/makexp_aix;		\
		echo "$(LIBPL)/makexp_aix";			\
		$(INSTALL_SCRIPT) $(srcdir)/Modules/ld_so_aix	\
				$(DESTDIR)$(LIBPL)/ld_so_aix;		\
		echo "$(LIBPL)/ld_so_aix";			\
		echo; echo "See Misc/AIX-NOTES for details.";	\
	else true; \
	fi
	@case "$(MACHDEP)" in beos*) \
		echo; echo "Installing support files for building shared extension modules on BeOS:"; \
		$(INSTALL_DATA) Misc/BeOS-NOTES $(DESTDIR)$(LIBPL)/README;	\
		echo; echo "$(LIBPL)/README";			\
		$(INSTALL_SCRIPT) Modules/ar_beos $(DESTDIR)$(LIBPL)/ar_beos; \
		echo "$(LIBPL)/ar_beos";			\
		$(INSTALL_SCRIPT) Modules/ld_so_beos $(DESTDIR)$(LIBPL)/ld_so_beos; \
		echo "$(LIBPL)/ld_so_beos";			\
		echo; echo "See Misc/BeOS-NOTES for details.";	\
		;; \
	esac

# Install the dynamically loadable modules
# This goes into $(exec_prefix)
sharedinstall: sharedmods
	$(RUNSHARED) $(PYTHON_FOR_BUILD) $(srcdir)/setup.py install \
	   	--prefix=$(prefix) \
		--install-scripts=$(BINDIR) \
		--install-platlib=$(DESTSHARED) \
		--root=$(DESTDIR)/
	-rm $(DESTDIR)$(DESTSHARED)/_sysconfigdata.py*

# Here are a couple of targets for MacOSX again, to install a full
# framework-based Python. frameworkinstall installs everything, the
# subtargets install specific parts. Much of the actual work is offloaded to
# the Makefile in Mac
#
#
# This target is here for backward compatiblity, previous versions of Python
# hadn't integrated framework installation in the normal install process.
frameworkinstall: install

# On install, we re-make the framework
# structure in the install location, /Library/Frameworks/ or the argument to
# --enable-framework. If --enable-framework has been specified then we have
# automatically set prefix to the location deep down in the framework, so we
# only have to cater for the structural bits of the framework.

frameworkinstallframework: frameworkinstallstructure install frameworkinstallmaclib

frameworkinstallstructure:	$(LDLIBRARY)
	@if test "$(PYTHONFRAMEWORKDIR)" = no-framework; then \
		echo Not configured with --enable-framework; \
		exit 1; \
	else true; \
	fi
	@for i in $(prefix)/Resources/English.lproj $(prefix)/lib; do\
		if test ! -d $(DESTDIR)$$i; then \
			echo "Creating directory $(DESTDIR)$$i"; \
			$(INSTALL) -d -m $(DIRMODE) $(DESTDIR)$$i; \
		else	true; \
		fi; \
	done
	$(LN) -fsn include/python$(VERSION) $(DESTDIR)$(prefix)/Headers
	sed 's/%VERSION%/'"`$(RUNSHARED) ./$(BUILDPYTHON) -c 'import platform; print platform.python_version()'`"'/g' < $(RESSRCDIR)/Info.plist > $(DESTDIR)$(prefix)/Resources/Info.plist
	$(LN) -fsn $(VERSION) $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Versions/Current
	$(LN) -fsn Versions/Current/$(PYTHONFRAMEWORK) $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/$(PYTHONFRAMEWORK)
	$(LN) -fsn Versions/Current/Headers $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Headers
	$(LN) -fsn Versions/Current/Resources $(DESTDIR)$(PYTHONFRAMEWORKINSTALLDIR)/Resources
	$(INSTALL_SHARED) $(LDLIBRARY) $(DESTDIR)$(PYTHONFRAMEWORKPREFIX)/$(LDLIBRARY)

# This installs Mac/Lib into the framework
# Install a number of symlinks to keep software that expects a normal unix
# install (which includes python-config) happy.
frameworkinstallmaclib:
	ln -fs "../../../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/python$(VERSION)/config/libpython$(VERSION).a"
	ln -fs "../../../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/python$(VERSION)/config/libpython$(VERSION).dylib"
	ln -fs "../$(PYTHONFRAMEWORK)" "$(DESTDIR)$(prefix)/lib/libpython$(VERSION).dylib"
	cd Mac && $(MAKE) installmacsubtree DESTDIR="$(DESTDIR)"

# This installs the IDE, the Launcher and other apps into /Applications
frameworkinstallapps:
	cd Mac && $(MAKE) installapps DESTDIR="$(DESTDIR)"

# This install the unix python and pythonw tools in /usr/local/bin
frameworkinstallunixtools:
	cd Mac && $(MAKE) installunixtools DESTDIR="$(DESTDIR)"

frameworkaltinstallunixtools:
	cd Mac && $(MAKE) altinstallunixtools DESTDIR="$(DESTDIR)"

# This installs the Demos and Tools into the applications directory.
# It is not part of a normal frameworkinstall
frameworkinstallextras:
	cd Mac && $(MAKE) installextras DESTDIR="$(DESTDIR)"

# This installs a few of the useful scripts in Tools/scripts
scriptsinstall:
	SRCDIR=$(srcdir) $(RUNSHARED) \
	$(PYTHON_FOR_BUILD) $(srcdir)/Tools/scripts/setup.py install \
	--prefix=$(prefix) \
	--install-scripts=$(BINDIR) \
	--root=$(DESTDIR)/

# Build the toplevel Makefile
Makefile.pre: Makefile.pre.in config.status
	CONFIG_FILES=Makefile.pre CONFIG_HEADERS= $(SHELL) config.status
	$(MAKE) -f Makefile.pre Makefile

# Run the configure script.
config.status:	$(srcdir)/configure
	$(SHELL) $(srcdir)/configure $(CONFIG_ARGS)

.PRECIOUS: config.status $(BUILDPYTHON) Makefile Makefile.pre

# Some make's put the object file in the current directory
.c.o:
	$(CC) -c $(PY_CFLAGS) -o $@ $<

# Run reindent on the library
reindent:
	./$(BUILDPYTHON) $(srcdir)/Tools/scripts/reindent.py -r $(srcdir)/Lib

# Rerun configure with the same options as it was run last time,
# provided the config.status script exists
recheck:
	$(SHELL) config.status --recheck
	$(SHELL) config.status

# Rebuild the configure script from configure.ac; also rebuild pyconfig.h.in
autoconf:
	(cd $(srcdir); autoconf)
	(cd $(srcdir); autoheader)

# Create a tags file for vi
tags::
	cd $(srcdir); \
	ctags -w -t Include/*.h; \
	for i in $(SRCDIRS); do ctags -w -t -a $$i/*.[ch]; \
	done; \
	sort -o tags tags

# Create a tags file for GNU Emacs
TAGS::
	cd $(srcdir); \
	etags Include/*.h; \
	for i in $(SRCDIRS); do etags -a $$i/*.[ch]; done

# Touch generated files
touch:
	touch Include/Python-ast.h Python/Python-ast.c

# Sanitation targets -- clean leaves libraries, executables and tags
# files, which clobber removes as well
pycremoval:
	find $(srcdir) -name '*.py[co]' -exec rm -f {} ';'

clean: pycremoval
	find . -name '*.[oa]' -exec rm -f {} ';'
	find . -name '*.s[ol]' -exec rm -f {} ';'
	find . -name '*.so.[0-9]*.[0-9]*' -exec rm -f {} ';'
	find build -name 'fficonfig.h' -exec rm -f {} ';' || true
	find build -name 'fficonfig.py' -exec rm -f {} ';' || true
	-rm -f Lib/lib2to3/*Grammar*.pickle

profile-removal:
	find . -name '*.gc??' -exec rm -f {} ';'

clobber: clean profile-removal
	-rm -f $(BUILDPYTHON) $(PGEN) $(LIBRARY) $(LDLIBRARY) $(DLLLIBRARY) \
		tags TAGS \
		config.cache config.log pyconfig.h Modules/config.c
	-rm -rf build platform
	-rm -rf $(PYTHONFRAMEWORKDIR)

# Make things extra clean, before making a distribution:
# remove all generated files, even Makefile[.pre]
# Keep configure and Python-ast.[ch], it's possible they can't be generated
distclean: clobber
	for file in Lib/test/data/* ; do \
	    if test "$$file" != "Lib/test/data/README"; then rm "$$file"; fi; \
	done
	-rm -f core Makefile Makefile.pre config.status \
		Modules/Setup Modules/Setup.local Modules/Setup.config \
		Modules/ld_so_aix Modules/python.exp Misc/python.pc
	-rm -f python*-gdb.py
	-rm -f pybuilddir.txt
	find $(srcdir) '(' -name '*.fdc' -o -name '*~' \
			   -o -name '[@,#]*' -o -name '*.old' \
			   -o -name '*.orig' -o -name '*.rej' \
			   -o -name '*.bak' ')' \
			   -exec rm -f {} ';'

# Check for smelly exported symbols (not starting with Py/_Py)
smelly: all
	nm -p $(LIBRARY) | \
		sed -n "/ [TDB] /s/.* //p" | grep -v "^_*Py" | sort -u; \

# Find files with funny names
funny:
	find $(SUBDIRS) $(SUBDIRSTOO) -type d \
		-o -name '*.[chs]' \
		-o -name '*.py' \
		-o -name '*.doc' \
		-o -name '*.sty' \
		-o -name '*.bib' \
		-o -name '*.dat' \
		-o -name '*.el' \
		-o -name '*.fd' \
		-o -name '*.in' \
		-o -name '*.tex' \
		-o -name '*,[vpt]' \
		-o -name 'Setup' \
		-o -name 'Setup.*' \
		-o -name README \
		-o -name Makefile \
		-o -name ChangeLog \
		-o -name Repository \
		-o -name Root \
		-o -name Entries \
		-o -name Tag \
		-o -name tags \
		-o -name TAGS \
		-o -name .cvsignore \
		-o -name MANIFEST \
		-o -print

# Perform some verification checks on any modified files.
patchcheck:
	$(RUNSHARED) ./$(BUILDPYTHON) $(srcdir)/Tools/scripts/patchcheck.py

# Dependencies

Python/thread.o:  $(srcdir)/Python/thread_atheos.h $(srcdir)/Python/thread_beos.h $(srcdir)/Python/thread_cthread.h $(srcdir)/Python/thread_foobar.h $(srcdir)/Python/thread_lwp.h $(srcdir)/Python/thread_nt.h $(srcdir)/Python/thread_os2.h $(srcdir)/Python/thread_pth.h $(srcdir)/Python/thread_pthread.h $(srcdir)/Python/thread_sgi.h $(srcdir)/Python/thread_solaris.h $(srcdir)/Python/thread_wince.h

# Declare targets that aren't real files
.PHONY: all build_all sharedmods oldsharedmods test quicktest memtest
.PHONY: install altinstall oldsharedinstall bininstall altbininstall
.PHONY: maninstall libinstall inclinstall libainstall sharedinstall
.PHONY: frameworkinstall frameworkinstallframework frameworkinstallstructure
.PHONY: frameworkinstallmaclib frameworkinstallapps frameworkinstallunixtools
.PHONY: frameworkaltinstallunixtools recheck autoconf clean clobber distclean
.PHONY: smelly funny patchcheck touch altmaninstall
.PHONY: gdbhooks

# IF YOU PUT ANYTHING HERE IT WILL GO AWAY

# Rules appended by makedepend

Modules/threadmodule.o: $(srcdir)/Modules/threadmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/threadmodule.c -o Modules/threadmodule.o
Modules/threadmodule$(SO):  Modules/threadmodule.o; $(BLDSHARED)  Modules/threadmodule.o   -o Modules/threadmodule$(SO)
Modules/signalmodule.o: $(srcdir)/Modules/signalmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/signalmodule.c -o Modules/signalmodule.o
Modules/signalmodule$(SO):  Modules/signalmodule.o; $(BLDSHARED)  Modules/signalmodule.o   -o Modules/signalmodule$(SO)
Modules/posixmodule.o: $(srcdir)/Modules/posixmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/posixmodule.c -o Modules/posixmodule.o
Modules/posixmodule$(SO):  Modules/posixmodule.o; $(BLDSHARED)  Modules/posixmodule.o   -o Modules/posixmodule$(SO)
Modules/errnomodule.o: $(srcdir)/Modules/errnomodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/errnomodule.c -o Modules/errnomodule.o
Modules/errnomodule$(SO):  Modules/errnomodule.o; $(BLDSHARED)  Modules/errnomodule.o   -o Modules/errnomodule$(SO)
Modules/pwdmodule.o: $(srcdir)/Modules/pwdmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/pwdmodule.c -o Modules/pwdmodule.o
Modules/pwdmodule$(SO):  Modules/pwdmodule.o; $(BLDSHARED)  Modules/pwdmodule.o   -o Modules/pwdmodule$(SO)
Modules/_sre.o: $(srcdir)/Modules/_sre.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_sre.c -o Modules/_sre.o
Modules/_sre$(SO):  Modules/_sre.o; $(BLDSHARED)  Modules/_sre.o   -o Modules/_sre$(SO)
Modules/_codecsmodule.o: $(srcdir)/Modules/_codecsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_codecsmodule.c -o Modules/_codecsmodule.o
Modules/_codecsmodule$(SO):  Modules/_codecsmodule.o; $(BLDSHARED)  Modules/_codecsmodule.o   -o Modules/_codecsmodule$(SO)
Modules/_weakref.o: $(srcdir)/Modules/_weakref.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_weakref.c -o Modules/_weakref.o
Modules/_weakref$(SO):  Modules/_weakref.o; $(BLDSHARED)  Modules/_weakref.o   -o Modules/_weakref$(SO)
Modules/zipimport.o: $(srcdir)/Modules/zipimport.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/zipimport.c -o Modules/zipimport.o
Modules/zipimport$(SO):  Modules/zipimport.o; $(BLDSHARED)  Modules/zipimport.o   -o Modules/zipimport$(SO)
Modules/arraymodule.o: $(srcdir)/Modules/arraymodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/arraymodule.c -o Modules/arraymodule.o
Modules/arraymodule$(SO):  Modules/arraymodule.o; $(BLDSHARED)  Modules/arraymodule.o   -o Modules/arraymodule$(SO)
Modules/mathmodule.o: $(srcdir)/Modules/mathmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/mathmodule.c -o Modules/mathmodule.o
Modules/_math.o: $(srcdir)/Modules/_math.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_math.c -o Modules/_math.o
Modules/math$(SO):  Modules/mathmodule.o Modules/_math.o; $(BLDSHARED)  Modules/mathmodule.o Modules/_math.o   -o Modules/math$(SO)
Modules/_struct.o: $(srcdir)/Modules/_struct.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_struct.c -o Modules/_struct.o
Modules/_struct$(SO):  Modules/_struct.o; $(BLDSHARED)  Modules/_struct.o   -o Modules/_struct$(SO)
Modules/timemodule.o: $(srcdir)/Modules/timemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/timemodule.c -o Modules/timemodule.o
Modules/timemodule$(SO):  Modules/timemodule.o; $(BLDSHARED)  Modules/timemodule.o   -o Modules/timemodule$(SO)
Modules/operator.o: $(srcdir)/Modules/operator.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/operator.c -o Modules/operator.o
Modules/operator$(SO):  Modules/operator.o; $(BLDSHARED)  Modules/operator.o   -o Modules/operator$(SO)
Modules/_randommodule.o: $(srcdir)/Modules/_randommodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_randommodule.c -o Modules/_randommodule.o
Modules/_randommodule$(SO):  Modules/_randommodule.o; $(BLDSHARED)  Modules/_randommodule.o   -o Modules/_randommodule$(SO)
Modules/_collectionsmodule.o: $(srcdir)/Modules/_collectionsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_collectionsmodule.c -o Modules/_collectionsmodule.o
Modules/_collectionsmodule$(SO):  Modules/_collectionsmodule.o; $(BLDSHARED)  Modules/_collectionsmodule.o   -o Modules/_collectionsmodule$(SO)
Modules/_heapqmodule.o: $(srcdir)/Modules/_heapqmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_heapqmodule.c -o Modules/_heapqmodule.o
Modules/_heapqmodule$(SO):  Modules/_heapqmodule.o; $(BLDSHARED)  Modules/_heapqmodule.o   -o Modules/_heapqmodule$(SO)
Modules/itertoolsmodule.o: $(srcdir)/Modules/itertoolsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/itertoolsmodule.c -o Modules/itertoolsmodule.o
Modules/itertoolsmodule$(SO):  Modules/itertoolsmodule.o; $(BLDSHARED)  Modules/itertoolsmodule.o   -o Modules/itertoolsmodule$(SO)
Modules/stropmodule.o: $(srcdir)/Modules/stropmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/stropmodule.c -o Modules/stropmodule.o
Modules/stropmodule$(SO):  Modules/stropmodule.o; $(BLDSHARED)  Modules/stropmodule.o   -o Modules/stropmodule$(SO)
Modules/_functoolsmodule.o: $(srcdir)/Modules/_functoolsmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_functoolsmodule.c -o Modules/_functoolsmodule.o
Modules/_functoolsmodule$(SO):  Modules/_functoolsmodule.o; $(BLDSHARED)  Modules/_functoolsmodule.o   -o Modules/_functoolsmodule$(SO)
Modules/datetimemodule.o: $(srcdir)/Modules/datetimemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/datetimemodule.c -o Modules/datetimemodule.o
Modules/datetimemodule$(SO):  Modules/datetimemodule.o; $(BLDSHARED)  Modules/datetimemodule.o   -o Modules/datetimemodule$(SO)
Modules/bufferedio.o: $(srcdir)/Modules/_io/bufferedio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/bufferedio.c -o Modules/bufferedio.o
Modules/bytesio.o: $(srcdir)/Modules/_io/bytesio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/bytesio.c -o Modules/bytesio.o
Modules/fileio.o: $(srcdir)/Modules/_io/fileio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/fileio.c -o Modules/fileio.o
Modules/iobase.o: $(srcdir)/Modules/_io/iobase.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/iobase.c -o Modules/iobase.o
Modules/_iomodule.o: $(srcdir)/Modules/_io/_iomodule.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/_iomodule.c -o Modules/_iomodule.o
Modules/stringio.o: $(srcdir)/Modules/_io/stringio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/stringio.c -o Modules/stringio.o
Modules/textio.o: $(srcdir)/Modules/_io/textio.c; $(CC) $(PY_CFLAGS)  -I$(srcdir)/Modules/_io -c $(srcdir)/Modules/_io/textio.c -o Modules/textio.o
Modules/_iomodule$(SO):  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o; $(BLDSHARED)  Modules/bufferedio.o Modules/bytesio.o Modules/fileio.o Modules/iobase.o Modules/_iomodule.o Modules/stringio.o Modules/textio.o   -o Modules/_iomodule$(SO)
Modules/fcntlmodule.o: $(srcdir)/Modules/fcntlmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/fcntlmodule.c -o Modules/fcntlmodule.o
Modules/fcntlmodule$(SO):  Modules/fcntlmodule.o; $(BLDSHARED)  Modules/fcntlmodule.o   -o Modules/fcntlmodule$(SO)
Modules/spwdmodule.o: $(srcdir)/Modules/spwdmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/spwdmodule.c -o Modules/spwdmodule.o
Modules/spwdmodule$(SO):  Modules/spwdmodule.o; $(BLDSHARED)  Modules/spwdmodule.o   -o Modules/spwdmodule$(SO)
Modules/grpmodule.o: $(srcdir)/Modules/grpmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/grpmodule.c -o Modules/grpmodule.o
Modules/grpmodule$(SO):  Modules/grpmodule.o; $(BLDSHARED)  Modules/grpmodule.o   -o Modules/grpmodule$(SO)
Modules/selectmodule.o: $(srcdir)/Modules/selectmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/selectmodule.c -o Modules/selectmodule.o
Modules/selectmodule$(SO):  Modules/selectmodule.o; $(BLDSHARED)  Modules/selectmodule.o   -o Modules/selectmodule$(SO)
Modules/mmapmodule.o: $(srcdir)/Modules/mmapmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/mmapmodule.c -o Modules/mmapmodule.o
Modules/mmapmodule$(SO):  Modules/mmapmodule.o; $(BLDSHARED)  Modules/mmapmodule.o   -o Modules/mmapmodule$(SO)
Modules/_csv.o: $(srcdir)/Modules/_csv.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_csv.c -o Modules/_csv.o
Modules/_csv$(SO):  Modules/_csv.o; $(BLDSHARED)  Modules/_csv.o   -o Modules/_csv$(SO)
Modules/socketmodule.o: $(srcdir)/Modules/socketmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/socketmodule.c -o Modules/socketmodule.o
Modules/timemodule.o: $(srcdir)/Modules/timemodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/timemodule.c -o Modules/timemodule.o
Modules/_socketmodule$(SO):  Modules/socketmodule.o Modules/timemodule.o; $(BLDSHARED)  Modules/socketmodule.o Modules/timemodule.o   -o Modules/_socketmodule$(SO)
Modules/_ssl.o: $(srcdir)/Modules/_ssl.c; $(CC) $(PY_CFLAGS)  -DUSE_SSL -I$(SSL)/include -I$(SSL)/include/openssl -c $(srcdir)/Modules/_ssl.c -o Modules/_ssl.o
Modules/_ssl$(SO):  Modules/_ssl.o; $(BLDSHARED)  Modules/_ssl.o  -L$(SSL)/lib -lssl -lcrypto  -o Modules/_ssl$(SO)
Modules/md5module.o: $(srcdir)/Modules/md5module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/md5module.c -o Modules/md5module.o
Modules/md5.o: $(srcdir)/Modules/md5.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/md5.c -o Modules/md5.o
Modules/_md5module$(SO):  Modules/md5module.o Modules/md5.o; $(BLDSHARED)  Modules/md5module.o Modules/md5.o   -o Modules/_md5module$(SO)
Modules/shamodule.o: $(srcdir)/Modules/shamodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/shamodule.c -o Modules/shamodule.o
Modules/_shamodule$(SO):  Modules/shamodule.o; $(BLDSHARED)  Modules/shamodule.o   -o Modules/_shamodule$(SO)
Modules/sha256module.o: $(srcdir)/Modules/sha256module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/sha256module.c -o Modules/sha256module.o
Modules/_sha256module$(SO):  Modules/sha256module.o; $(BLDSHARED)  Modules/sha256module.o   -o Modules/_sha256module$(SO)
Modules/sha512module.o: $(srcdir)/Modules/sha512module.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/sha512module.c -o Modules/sha512module.o
Modules/_sha512module$(SO):  Modules/sha512module.o; $(BLDSHARED)  Modules/sha512module.o   -o Modules/_sha512module$(SO)
Modules/binascii.o: $(srcdir)/Modules/binascii.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/binascii.c -o Modules/binascii.o
Modules/binascii$(SO):  Modules/binascii.o; $(BLDSHARED)  Modules/binascii.o   -o Modules/binascii$(SO)
Modules/cStringIO.o: $(srcdir)/Modules/cStringIO.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cStringIO.c -o Modules/cStringIO.o
Modules/cStringIO$(SO):  Modules/cStringIO.o; $(BLDSHARED)  Modules/cStringIO.o   -o Modules/cStringIO$(SO)
Modules/cPickle.o: $(srcdir)/Modules/cPickle.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/cPickle.c -o Modules/cPickle.o
Modules/cPickle$(SO):  Modules/cPickle.o; $(BLDSHARED)  Modules/cPickle.o   -o Modules/cPickle$(SO)
Modules/zlibmodule.o: $(srcdir)/Modules/zlibmodule.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/zlibmodule.c -o Modules/zlibmodule.o
Modules/zlibmodule$(SO):  Modules/zlibmodule.o; $(BLDSHARED)  Modules/zlibmodule.o  -lz  -o Modules/zlibmodule$(SO)
Modules/multiprocessing.o: $(srcdir)/Modules/_multiprocessing/multiprocessing.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/multiprocessing.c -o Modules/multiprocessing.o
Modules/socket_connection.o: $(srcdir)/Modules/_multiprocessing/socket_connection.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/socket_connection.c -o Modules/socket_connection.o
Modules/semaphore.o: $(srcdir)/Modules/_multiprocessing/semaphore.c; $(CC) $(PY_CFLAGS)  -c $(srcdir)/Modules/_multiprocessing/semaphore.c -o Modules/semaphore.o
Modules/_multiprocessingmodule$(SO):  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o; $(BLDSHARED)  Modules/multiprocessing.o Modules/socket_connection.o Modules/semaphore.o   -o Modules/_multiprocessingmodule$(SO)
