//
//  main.c
//  chapter6Challenge
//
//  Created by Tim Spear on 08/02/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for (int i = 99; i >= 0; i-=3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("found one!\n");
        }
    }
    return 0;
}

