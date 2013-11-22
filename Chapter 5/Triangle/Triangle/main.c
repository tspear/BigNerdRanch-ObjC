//
//  main.c
//  Triangle
//
//  Created by Tim Spear on 06/02/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

// Add your new function here
float remainingAngle(float angleA, float angleB)
{
    float angleC = 180 - angleA - angleB;
    return angleC;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}