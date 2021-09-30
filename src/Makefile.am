bin_PROGRAMS = hello
hello_SOURCES = main.c

# include header paths
hello_CPPFLAGS = -I$(srcdir)/../lib

# link libraries
hello_LDADD = ../lib/libhello.la # -L../../amhello/lib/.libs/  -lhello

if FOO
hello_CPPFLAGS += -DFOO
endif
