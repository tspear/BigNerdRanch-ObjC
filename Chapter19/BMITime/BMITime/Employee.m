//
//  Employee.m
//  BMITime
//
//  Created by Tim Spear on 17/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;


-(void)addAssetsObject:(Asset *)a
{
    // is assets nil?
    if (!assets)
    {
        // create the array
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    // sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets)
    {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",[self employeeID],[self valueOfAssets]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
