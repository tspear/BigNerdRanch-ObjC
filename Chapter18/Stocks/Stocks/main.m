//
//  main.m
//  Stocks
//
//  Created by Tim Spear on 10/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockholding.h"



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
        
        // chapter18 - add foreignstockholidng objects
        ForeignStockholding *foreignStock1 = [[ForeignStockholding alloc] init];
        [foreignStock1 setPurchaseSharePrice:47.10];
        [foreignStock1 setCurrentSharePrice:43.51];
        [foreignStock1 setNumberOfShares:20];
        [foreignStock1 setConversionRate:1.43];
        
        ForeignStockholding *foreignStock2 = [[ForeignStockholding alloc] init];
        [foreignStock2 setPurchaseSharePrice:37.10];
        [foreignStock2 setCurrentSharePrice:23.51];
        [foreignStock2 setNumberOfShares:80];
        [foreignStock2 setConversionRate:2.24];
        
        ForeignStockholding *foreignStock3 = [[ForeignStockholding alloc] init];
        [foreignStock3 setPurchaseSharePrice:99.10];
        [foreignStock3 setCurrentSharePrice:25.51];
        [foreignStock3 setNumberOfShares:120];
        [foreignStock3 setConversionRate:3.34];
        
        
        // create array with objects
        NSMutableArray *stockList = [NSMutableArray arrayWithObjects: stock0, stock1, stock2, foreignStock1, foreignStock2, foreignStock3, nil];
        
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

