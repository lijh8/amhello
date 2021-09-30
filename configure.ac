AC_INIT([amhello], [1.0], [bug-report@address])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_PROG_CC
AM_PROG_AR

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIRS([m4])
AC_CHECK_LIB([pthread])

AC_ARG_ENABLE(
    [foo],
    [--enable-foo turn on foo],
    [if test "$enableval" == "yes"; then
        foo=true
    fi]
)

AM_CONDITIONAL([FOO], [test x$foo = xtrue])

AC_CONFIG_FILES([
    Makefile
    src/Makefile
    lib/Makefile
])

LT_INIT

AC_OUTPUT
