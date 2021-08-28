#include <stdio.h>
#include "say.h"

void say_hello(void){
    printf("%s:%d: %s\n", __FILE__, __LINE__, "hello");
}
