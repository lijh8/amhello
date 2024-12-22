# Usage:
# bash ./autogen
# bash ./autogen clean
# ./configure # --enable-ndebug
# make
# make clean
# make DESTDIR=~/foo instal
# ./main/.libs/main

# autogen
if (( $# == 0 )); then
  [[ ! -d m4 ]] && mkdir m4
  autoreconf -i
fi

# clean
if [[ $1 == "clean" ]]; then
  # temporaries by autoreconf -i
  rm -fr aclocal.m4 compile config.* configure \\n    configure~ depcomp install-sh m4 missing ar-lib \\n    autom4te.cache ltmain.sh

  find . -name "Makefile.in" -exec rm -fr {} \;

  # temporaries by ./configure
  rm -fr libtool stamp-h1
  find . -name ".deps" -type d -exec rm -fr {} \;
  find . -name "Makefile" -exec rm -fr {} \;

  # temporaries by make
  find . \( -name "*.la" -o -name "*.lai" -o -name "*.lo" \\n    -o -name "*.d" -o -name "*.o" \) -exec rm -fr {} \;
fi
