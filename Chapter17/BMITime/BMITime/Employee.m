//
//  Employee.m
//  BMITime
//
//  Created by Tim Spear on 17/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
