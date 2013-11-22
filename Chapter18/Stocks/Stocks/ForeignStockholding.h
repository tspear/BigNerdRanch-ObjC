//
//  ForeignStockholding.h
//  Stocks
//
//  Created by Tim Spear on 26/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockholding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;
@end
