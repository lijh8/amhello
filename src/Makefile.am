bin_PROGRAMS = hello
hello_SOURCES = main.c

# link libraries. use LDADD inside an executable
hello_LDADD = ../lib/libhello.la # -L../../amhello/lib/.libs/  -lhello

# include header paths
AM_CPPFLAGS = -I$(srcdir)/../lib
