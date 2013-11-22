//
//  ForeignStockholding.m
//  Stocks
//
//  Created by Tim Spear on 26/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "ForeignStockholding.h"
@implementation ForeignStockholding

@synthesize conversionRate;

- (float)costInDollars
{
    return [super costInDollars] * conversionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * conversionRate;
}


@end
