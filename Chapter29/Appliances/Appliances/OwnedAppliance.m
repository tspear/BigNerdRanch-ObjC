//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Tim Spear on 11/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n
{
    // Call the superclasses init
    self = [super initWithProductName:pn];
    
    if (self) {
        // make a set to hold owner names
        ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (n) {
            [ownerNames addObject:n];
        }
    }
    // return pointer to new obj
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

-(void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
