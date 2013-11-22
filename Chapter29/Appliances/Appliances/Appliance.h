//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Tim Spear on 11/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    NSString *productName;
    int voltage;
}

// @property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

// The designated initializer
- (id)initWithProductName:(NSString *)pn;

@end
