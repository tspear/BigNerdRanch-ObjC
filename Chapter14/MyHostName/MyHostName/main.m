//
//  main.m
//  MyHostName
//
//  Created by Tim Spear on 18/03/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // new NSHost instance
        NSHost *myHost = [NSHost currentHost];
        NSLog(@"NSHost obj details - %@",myHost);
        
        // get compname from instance
        NSString *myCompname = [myHost localizedName];
        
        // PRINT
        NSLog(@"Your host name is %@", myCompname);
    
    }
    return 0;
}

