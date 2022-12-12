```
Autotools Tutorial, Alexandre Duret-Lutz
https://www.lrde.epita.fr/~adl/autotools.html
Handout version in PDF (4 slides per pages without animations, for printing)
https://www.lrde.epita.fr/~adl/dl/autotools-handout-4.pdf

$ apt install build-essential git perl flex bison
$ apt install automake autoconf libtool pkg-config gettext gperf

$ autoscan
$ mv configure.scan configure.ac
$ vi configure.ac
AC_CONFIG_MACRO_DIRS([m4])
AC_PROG_CC # CXX
AC_LANG(C) # C++
AC_PROG_CPP
LT_INIT
AC_CONFIG_FILES([Makefile src/Makefile])
AC_OUTPUT
$
$ vi Makefile
SUBDIRS = src lib
ACLOCAL_AMFLAGS = -I m4
$
$ vi src/Makefile
bin_PROGRAMS = hello
hello_SOURCES = main.c
hello_CPPFLAGS = -I$(srcdir)/../lib
hello_CFLAGS = -std=c99 # CXXFLAGS
hello_LDADD = ../lib/libhello.la # -L../../amhello/lib/.libs/ -lhello
$
$ vi lib/Makefile
lib_LTLIBRARIES = libhello.la
libhello_la_SOURCES = say.c say.h
libhello_la_CPPFLAGS = -I../lib
libhello_la_LIBADD = ../lib/libhello.la # -L../../amhello/lib/.libs/ -lhello
$
$ mkdir m4
$ autoreconf -i # or, put it in autogen.sh
$ ./configure # generate Makefile
$ make

$ make DESTDIR=$HOME/inst install # or, ./configure --PREFIX $HOME/inst
$ cd $HOME/inst
$ tar zcvf ~/amhello-1.0-i686.tar.gz .
~/amhello-1.0-i686.tar.gz is ready to be uncompressed in / on any hosts
$ ls ./lib/.libs
libhello.a  libhello.la  libhello.lai  libhello.so  say.o
$
```
