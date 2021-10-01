#include <assert.h>
#include "say.h"

#ifdef NDEBUG
#include "aaa.h"
#else
#include "bbb.h"
#endif

int main(int argc, char *argv[]){
    say_hello();
    assert(0);
    return 0;
}
