//
//  main.m
//  Chapter26Challenge
//
//  Created by Tim Spear on 22/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //
        NSMutableArray *myObj = [[NSMutableArray alloc] init];
        
        /*
            array
            dict
            string
            data
            date
            int
            float
            bool
        */
        
        // NSArray
        [myObj addObject:[NSArray arrayWithObjects:@"1",@"2",@"3", nil]];
        
        // Dictionary
        NSMutableDictionary *stock;
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [myObj addObject:stock];
        
        
        // NSString
        NSString *text = @"ffftt";
        [myObj addObject:text];
        
        
        // Data
        [myObj addObject:[[NSData alloc]init]];
        
        
        // Date
        [myObj addObject:[NSDate date]];
        
        
        // int
        [myObj addObject:[NSNumber numberWithInt:200]];
        
        
        // float
        [myObj addObject:[NSNumber numberWithFloat:3.14]];
        
        
        // BOOL
        [myObj addObject:[NSNumber numberWithBool:YES]];
        
        
        // write to plist
        [myObj writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        
    }
    return 0;
}

