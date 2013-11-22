//
//  Asset.m
//  BMITime
//
    //  Created by Tim Spear on 29/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >",[self label],[self resaleValue]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
