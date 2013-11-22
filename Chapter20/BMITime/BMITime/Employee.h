//
//  Employee.h
//  BMITime
//
//  Created by Tim Spear on 17/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
