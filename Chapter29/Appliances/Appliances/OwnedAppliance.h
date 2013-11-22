//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Tim Spear on 11/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownerNames;
}
// The designated initializer
- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end
