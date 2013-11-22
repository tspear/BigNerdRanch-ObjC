//
//  main.m
//  Callbacks
//
//  Created by Tim Spear on 13/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create logger instance
        Logger *logger = [[Logger alloc]init];
        
        // Notifications method - time zone change
        [[NSNotificationCenter defaultCenter]addObserver:logger
                                                selector:@selector(zoneChange:)
                                                    name:NSSystemTimeZoneDidChangeNotification
                                                  object:nil];
        
        
        
        
        // "Helper Object"/Delegate
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        
        // timer callback - "Target-Action"
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        // set the runloop
        [[NSRunLoop currentRunLoop] run];
        
        
    }
    return 0;
}

