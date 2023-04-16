#include <stdio.h>
#include <string.h>
//#include "string_util.h"


int length_string_source (char * source){
    int var_length_source = strlen(source);
    return  var_length_source;
}

int length_string_target (char * target){
    int var_length_target = strlen(target);
    return var_length_target;
}

char * concat_string (char * source, char * target){
    char * var_string_concat = strcat(source, target);
    return var_string_concat;
}

int length_concat (char * var_string_concat){
    int var_length_concat = strlen(var_string_concat);
    return var_length_concat;
}

char * revert_string (char * var_string_concat){
    char * var_string_revert = "";
    for (int i = (length_concat(var_string_concat)-1); i>=0; i--){
        var_string_revert = var_string_revert + var_string_concat[i];
    }
    printf("%s", var_string_revert);
    return var_string_revert;
}