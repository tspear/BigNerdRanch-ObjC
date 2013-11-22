//
//  Portfolio.m
//  Stocks
//
//  Created by Tim Spear on 01/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

- (void)addStockholdingObject:(StockHolding *)s
{
    // is stockHoldings nil?
    if (!stockHoldings)
    {
        // create the stockHoldings array
        stockHoldings = [[NSMutableArray alloc] init];
    }
    
    // add the incoming stockHolding obj
    [stockHoldings addObject:s];
}

- (int)currentValue
{
    // total up values
    int total = 0;
    for (StockHolding *i in stockHoldings)
    {
        total += [i valueInDollars];
    }
    
    return total;
    
}

@end
