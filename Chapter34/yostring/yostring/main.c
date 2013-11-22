//
//  main.c
//  yostring
//
//  Created by Tim Spear on 16/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // for malloc/free
#include <string.h> // For strlen

int main(int argc, const char * argv[])
{


    char x = 0x21; // The character '!'
    
    while (x<= '~') { // The character '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    
    // get a pointer to 5 bytes on the heap
    const char *start = "A backslash after two newlines and a tab \n\n\t\\";

    // Print out the string and its length
    printf("%s has %zu characters\n", start, strlen(start));
    // Print out the third letter
    printf("The third letter is %c\n", *(start + 2));
    
    
    
    return 0;
}

