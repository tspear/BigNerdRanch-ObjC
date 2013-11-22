//
//  Asset.h
//  BMITime
//
//  Created by Tim Spear on 29/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end