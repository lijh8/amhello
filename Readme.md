Install tools
```
$ sudo apt install build-essential
$ sudo apt install automake autoconf libtool pkg-config gettext flex bison
```

Try out
```
$ autoreconf -i
$ ./configure
$ make && make install
$ hello
$ make DESTDIR=/home/ljh/tmp install
$ cd /home/ljh/tmp
$ tar cf hello.tar usr
$ cd /
$ tar xf hello.tar

$ src/hello
say.c:5: hello
$

$ ls lib/.libs
libhello.la  libhello.so
$
```

Link other libraries
```
# configure.ac
AC_CHECK_LIB([pthread])

# or, Makefile.am
hello_LDADD = ../lib/libhello.la  -L../../amhello/lib/.libs/  -lhello
```

Include header file paths
```
# Makefile.am
hello_CPPFLAGS = -I../../amhello/lib
```

Options from commandline, configure.ac, Makefile.am to C source files
```
./configure --enable-ndebug
./configure
./configure --disable-ndebug
```

Autotools Tutorial
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

Links

https://stackoverflow.com/questions/32092644/autotools-is-there-a-short-for-ac-arg-enable-action-if-given

https://stackoverflow.com/questions/11898782/how-to-conditionally-compile-in-a-autotools-project
