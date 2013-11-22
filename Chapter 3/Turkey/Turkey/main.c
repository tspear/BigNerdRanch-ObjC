//
//  main.c
//  Turkey
//
//  Created by Tim Spear on 20/01/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    // declare variable weight of type float
    float weight;

    // put a bumber in that variable
    weight = 14.2;
    
    // log it to the user
    printf("The turkey weighs %F.\n", weight);
    
    // declare another var of type float
    float cookingTime;

    // calculate the cooking time and store it in the variable
    // in this case, '*' means 'multiplied by'
    cookingTime = 15.0 + 15.0 * weight;

    // log that to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    //
    return 0;
}
