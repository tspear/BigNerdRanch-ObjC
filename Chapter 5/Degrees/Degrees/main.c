//
//  main.c
//  Degrees
//
//  Created by Tim Spear on 06/02/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// declare a static variable
static float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature= cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f celsius is  %f fahrenheit\n",cel,fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degress fahrenheit.\n", freezeInF);
    printf("the last temperature reading was %f.\n", lastTemperature);
    return EXIT_SUCCESS;
}

