#include <stdio.h>
#include <string.h>
#include "../../printModule/inc/print_util.h"
#include "../../stringModule/inc/string_util.h"




char * print_original_source(char * source){
    for (int i = 0; i<length_string_source(source); i++){
    printf("%c", source[i]);
    }
    return source;
}

char * print_original_target(char * target){
    for (int i = 0; i<length_string_target(target); i++){
        printf("%c", target[i]);
    }
    return target;
}

char * print_concat(char * var_string_concat){
    for (int i = 0; i<length_concat(var_string_concat); i++){
        printf("%c", var_string_concat[i]);
    }
    return var_string_concat;
}

char * print_reverse_concat(char * var_string_revert){
    for (int i = 0; i<length_concat(var_string_revert); i++){
        printf("%c", var_string_revert[i]);
    }
    return var_string_revert;
}
