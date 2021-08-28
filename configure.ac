AC_INIT([amhello], [1.0], [bug-report@address])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])

AC_CONFIG_FILES([
    Makefile
    src/Makefile
    lib/Makefile
    ])

LT_INIT
AM_PROG_AR
AC_CONFIG_MACRO_DIRS([m4])
AC_CHECK_LIB([pthread])

AC_OUTPUT
