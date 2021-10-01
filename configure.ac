#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
# AC_PROG_RANLIB # rendered obsolete by 'LT_INIT'

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
                 lib/Makefile
                 src/Makefile])

AC_CONFIG_MACRO_DIRS([m4])
AM_PROG_AR
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
LT_INIT

AC_ARG_ENABLE([ndebug],
              [AS_HELP_STRING([--enable-ndebug], [turn off assert])],
              [if test "$enableval" = "yes"; then ndebug=yes; fi])

AM_CONDITIONAL([NDEBUG], [test x$ndebug = xyes])

AC_OUTPUT
