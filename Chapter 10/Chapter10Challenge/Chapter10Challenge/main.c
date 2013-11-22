//
//  main.c
//  Chapter10Challenge
//
//  Created by Tim Spear on 25/02/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[])
{
    
    long secondsSince1970 = time(NULL);
    printf("it has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);

    // date in 4 million seconds.
    long secondsplus4million = secondsSince1970 + 4000000;
    struct tm later;
    localtime_r(&secondsplus4million, &later);
    printf("The date in 4 million seconds will be is %d-%d-%d\n", later.tm_mon + 1, later.tm_mday, later.tm_year + 1900);
    
    
    return 0;
}

