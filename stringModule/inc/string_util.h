#include <string.h>

#ifndef STRING_UTIL
#define STRING_UTIL

int length_string_source (char * source);
int length_string_target (char * target);

char * concat_string (char * source, char * target);

int length_concat (char * var_string_concat);

char * revert_string (char * var_string_concat);

#endif 