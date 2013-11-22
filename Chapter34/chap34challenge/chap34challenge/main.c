//
//  main.c
//  chap34challenge
//
//  Created by Tim Spear on 16/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

int spaceCount (const char *thesentence) {
    int x = 0;
    int count = 0;
    while (thesentence[x] !='\0')
    {
        if (thesentence[x] == 0x20){
            count++;
        };
        x++;
    }
    return count;
}


int main(int argc, const char * argv[])
{
    const char *sentence = "He was not in the cab at the time";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    return 0;
}