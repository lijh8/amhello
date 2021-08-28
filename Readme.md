Install tools
```
$ sudo apt install build-essential
$ sudo apt install automake autoconf libtool pkg-config gettext flex bison
```

Try out
```
$ autoreconf -i
$ ./configure
$ make

$ src/hello
say.c:5: hello
$

$ ls lib/.libs
libhello.la  libhello.so
$
```

Link other libraries
```
# configure.ac:
AC_CHECK_LIB([pthread])

# or, Makefile.am:
hello_LDADD = ../lib/libhello.la  -L../../amhello/lib/.libs/  -lhello
```

Include header file paths
```
# Makefile.am:
hello_CPPFLAGS = -I../../amhello/lib

# or,
#AM_CPPFLAGS = -I../../amhello/lib
```

Autotools Tutorial:
https://www.lrde.epita.fr/~adl/dl/autotools-handout-4.pdf
```
foo_CFLAGS =
foo_CXXFLAGS =
foo_LDFLAGS =
foo_LDADD = -lhello -L../hello  # if foo is a program
foo_LIBADD = -lhello -L../hello  # if foo is a library
foo_CPPFLAGS =
```

GNU automake
https://www.gnu.org/software/automake/manual/automake.pdf
```
AM_CFLAGS
AM_CXXFLAGS
AM_LDFLAGS
AM_CPPFLAGS
```

Versions
```
Debian Linux 11 (bullseye)
GNU Autoconf 2.69
GNU automake 1.16.3
```
