//
//  main.m
//  Chapter12Challenge
//
//  Created by Tim Spear on 04/03/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"Todays's date is %@", now);
        //double seconds = [now timeIntervalSince1970];
        //NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        //NSDate *later = [now dateByAddingTimeInterval:100000];
        //NSLog(@"In 100,000 seconds it will be %@", later);
        
        
        // get date object from NSDate using components
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1971];
        [comps setMonth:6];
        [comps setDay:5];
        [comps setHour:10];
        [comps setMinute:0];
        [comps setSecond:0];
        // new NSCalendar
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        // get birthdate (using comps)
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSLog(@"dateof birth  = %@",dateOfBirth);
        
        // get time interval between 2 dates
        double d = [now timeIntervalSinceDate:dateOfBirth];
        //
        NSLog(@"I've been alive for %f seconds",d);
        
    }
    return 0;
}

