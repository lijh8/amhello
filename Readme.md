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
# use LDADD inside an executable
hello_LDADD = ../lib/libhello.la  -L../../amhello/lib/.libs/  -lhello

# use LIBADD inside a library (it's a library itself!)
#hello_LIBADD = ../lib/libhello.la  -L../../amhello/lib/.libs/  -lhello
```

Header file path:
```
# Makefile.am:
AM_CPPFLAGS = -I../../amhello/lib
```

Autotools Tutorial:
https://www.lrde.epita.fr/~adl/dl/autotools-handout-4.pdf
