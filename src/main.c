#include "say.h"

#ifdef FOO
#include "aaa.h"
#else
#include "bbb.h"
#endif

int main(int argc, char *argv[]){
    say_hello();
    return 0;
}
