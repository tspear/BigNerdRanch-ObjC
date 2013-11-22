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
#import "Portfolio.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create Portfolio object
        Portfolio *portfolio = [[Portfolio alloc] init];
        
        // fill portfolio with randomized stockholding objects
        for (int i = 0; i < 10; i++)
        {
            // new stockholding obj
            StockHolding *stock = [[StockHolding alloc] init];
            
            // populate properties
            [stock setPurchaseSharePrice:i + 2.30];
            [stock setCurrentSharePrice:i + 4.50];
            [stock setNumberOfShares:i * 10];
            
            // add to portfolio
            [portfolio addStockholdingObject:stock];
        }
        
        // report portfolio value
        NSLog(@"The value of %@ is $%d", portfolio, [portfolio currentValue]);
    
    }
    return 0;
}

