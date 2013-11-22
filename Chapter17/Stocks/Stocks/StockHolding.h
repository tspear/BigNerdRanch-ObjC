//
//  StockHolding.h
//  Stocks
//
//  Created by Tim Spear on 10/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares


@end
