//
//  main.m
//  stockz
//
//  Created by Tim Spear on 22/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        //
        NSMutableDictionary *stock;
        
        //
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        
        [stocks writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        
        
        NSArray *stocklist = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        
        for (NSDictionary *d in stocklist) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
        
    }
    return 0;
}

