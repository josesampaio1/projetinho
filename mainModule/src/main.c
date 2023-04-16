#include <stdio.h>
#include "../inc/main.h"

char* input_source (){
    static char source[20];
    printf("Enter a source argument: ");
    fgets(source, 20, stdin); 
    //scanf("%[^\n]%*c", &source);
    return source;
}

char* input_target (){
    static char target[20];
    printf("Enter a target argument: ");
    fgets(target, 20, stdin); 
    return target;
}

int main(){
    char * source = input_source ();
    char * target = input_target ();
    char * str_concat = concat_string (source, target);
    char * str_revert = revert_string (str_concat);
    print_concat(str_concat);
    print_reverse_concat(str_revert);
    return 0;
}