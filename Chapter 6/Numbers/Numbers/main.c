//
//  main.c
//  Numbers
//
//  Created by Tim Spear on 06/02/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double y = 12345.6789;
    printf("y is %.2f\n",y);
    printf("y is %.2e\n",y);
    
    // chapter 6 challenge
    double sinOf1 = sin(1);
    printf("result is %.3f", sinOf1);
    
    //
    return 0;
}

