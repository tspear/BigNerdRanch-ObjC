//
//  main.c
//  TwoFloats
//
//  Created by Tim Spear on 22/01/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // create two float vars
    float foo = 2.5;
    float bar = 42.5;
    
    // create a new 'double' var to store the result
    double addResult = foo + bar;
    
    // print it!
    printf("The result is %f", addResult);
    sleep();
    return 0;
}

