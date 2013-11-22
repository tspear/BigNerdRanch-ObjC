//
//  main.c
//  Affirmation
//
//  Created by Tim Spear on 16/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // atoi()

int main(int argc, const char * argv[])
{
    
    if (argc!=3) {
        fprintf(stderr, "Usage: Affirmation ,name. ,number.\n");
        return 1;
    }

    int count = atoi(argv[2]);
    for (int j = 0; j < count; j++){
        printf("%s is cool.\n", argv[1]);
    }
    
    return 0;
}

