//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Tim Spear on 11/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize voltage;

-(void)setVoltage:(int)x
{
    NSLog(@"Setting voltage to %d", x);
    voltage = x;
}


- (id)initWithProductName:(NSString *)pn
{
    // call the NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // set the productName
        productName = [pn copy];
        
        // Give Voltage a starting value
        [self setVoltage:120];
    }
    return self;
}


- (id) init
{
    return [self initWithProductName:@"Unknown"];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", productName, voltage];
}

@end