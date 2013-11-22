//
//  Logger.m
//  Callbacks
//
//  Created by Tim Spear on 14/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch");
}

// Call each time a chunk of data arrives
-(void)connection:(NSURLConnection *)connection
   didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // Create a mutable data if it doesnt already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
    
}

// Called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"String has %lu characters", [string length]);
    
    // uncomment the next line to see the entire file
    //NSLog(@"The whole string is %@",string);
    
}


// Called if the fetch fails
-(void)connection:(NSURLConnection *)connection
didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed: %@",[error localizedDescription]);
    incomingData = nil;
}



- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end
