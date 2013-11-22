//
//  main.m
//  DateList
//
//  Created by Tim Spear on 18/03/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create 3 NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0]; // 24 Hours
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0]; // 24 Hours
        
        // Create an array containing all 3 (nil terminates the list)
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add the dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date : %@", d);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
        
        
    }
    return 0;
}

