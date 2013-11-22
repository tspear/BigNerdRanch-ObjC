//
//  Person.m
//  BMITime
//
//  Created by Tim Spear on 09/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
