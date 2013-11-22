//
//  main.m
//  IsDST
//
//  Created by Tim Spear on 11/03/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *myTimeZone = [NSTimeZone systemTimeZone];
        NSLog(@"%@", myTimeZone);
        
        BOOL isDST = [myTimeZone isDaylightSavingTime];
        if(isDST){
            NSLog(@"It is DST at the mo.");
        } else{
            NSLog(@"It is NOT DST at the mo, sorry.");
        }
        
    }
    return 0;
}

