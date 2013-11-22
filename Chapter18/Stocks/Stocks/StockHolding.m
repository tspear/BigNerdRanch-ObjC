//
//  StockHolding.m
//  Stocks
//
//  Created by Tim Spear on 10/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}

@end
