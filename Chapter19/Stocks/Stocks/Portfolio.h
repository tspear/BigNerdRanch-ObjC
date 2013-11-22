//
//  Portfolio.h
//  Stocks
//
//  Created by Tim Spear on 01/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    // declare instance variables/Properties
    NSMutableArray *stockHoldings;
}

// declare instance methods
- (void)addStockholdingObject:(StockHolding *)s;
- (int)currentValue;

@end
