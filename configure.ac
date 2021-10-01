AC_INIT([amhello], [1.0], [bug-report@address])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_PROG_CC
AM_PROG_AR

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIRS([m4])
AC_CHECK_LIB([pthread])

AC_ARG_ENABLE([ndebug],
    [AS_HELP_STRING([--enable-ndebug], [turn off assert])],
    [if test "$enableval" = "yes"; then ndebug=yes; fi]
)

AM_CONDITIONAL([NDEBUG], [test x$ndebug = xyes])

AC_CONFIG_FILES([
    Makefile
    src/Makefile
    lib/Makefile
])

LT_INIT

AC_OUTPUT
