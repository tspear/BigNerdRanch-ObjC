//
//  main.c
//  gradeInTheShade
//
//  Created by Tim Spear on 16/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

float averageFloats(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i=0;i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum /dataCount;
    
}


int main(int argc, const char * argv[])
{

    // create an array of floats
    float gradeBook[] = {60.2, 94.5, 81.1};

    // calculate the average
    float average = averageFloats(gradeBook, 3);
    
    printf("Average = %.2f\n", average);
    
    return 0;
}

