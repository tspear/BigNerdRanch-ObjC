//
//  main.m
//  Stocks
//
//  Created by Tim Spear on 10/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create stockholding objects
        StockHolding *stock0 = [[StockHolding alloc] init];
        [stock0 setPurchaseSharePrice:2.30];
        [stock0 setCurrentSharePrice:4.50];
        [stock0 setNumberOfShares:40];
        
        StockHolding *stock1 = [[StockHolding alloc] init];
        [stock1 setPurchaseSharePrice:12.19];
        [stock1 setCurrentSharePrice:10.56];
        [stock1 setNumberOfShares:90];

        StockHolding *stock2 = [[StockHolding alloc] init];
        [stock2 setPurchaseSharePrice:45.10];
        [stock2 setCurrentSharePrice:49.51];
        [stock2 setNumberOfShares:210];
        
        
        // create array with objects
        NSMutableArray *stockList = [NSMutableArray arrayWithObjects: stock0, stock1, stock2, nil];
        
        for (StockHolding *i in stockList)
        {
            int value = [i valueInDollars];
            NSLog(@"Value in Dollars =  %i", value);
            value = [i costInDollars];
            NSLog(@"Cost in Dollars =  %i", value);
        }
        
        
    }
    return 0;
}

