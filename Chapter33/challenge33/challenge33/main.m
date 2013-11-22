//
//  main.m
//  challenge33
//
//  Created by Tim Spear on 16/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        uint64_t num = 0;
        for (int i = 0; i <= 64; i += 2){
            num += 1 << i;
        }
        

        NSLog(@"num: %@", [NSNumber numberWithUnsignedLong: num]);

    }
    return 0;
}

