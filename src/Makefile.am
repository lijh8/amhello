bin_PROGRAMS = hello
hello_SOURCES = main.c

hello_CPPFLAGS = -I$(srcdir)/../lib

hello_CFLAGS =

# including LDFLAGS, LDLIBS
hello_LDADD = ../lib/libhello.la # -L../../amhello/lib/.libs/  -lhello

if NDEBUG
hello_CPPFLAGS += -DNDEBUG
endif
