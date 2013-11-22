//
//  main.m
//  Stringz
//
//  Created by Tim Spear on 10/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i=0; i<10; i++)
        {
            [str appendString:@"tim is cool\n"];
        }
        
        // Declare a pointer to an NSError object, but don't instantiate it.
        // The NSError instance will only be created if there is, in fact, an error.
        NSError *error = nil;
        
        // Pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/too/darn/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        // test the returned BOOL, and query the NSError if the write failed
        if (success) {
            NSLog(@"Done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool/txt failed: %@", [error localizedDescription]);
        }
    
        
    }
    return 0;
}