//
//  main.m
//  Constants
//
//  Created by Tim Spear on 09/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // In literal NSString, use \u for abitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"NSLocaleCurrencyCode is %@", NSLocaleCurrencyCode);
        NSLog(@"Money here is %@", currency);
        
    }
    return 0;
}

