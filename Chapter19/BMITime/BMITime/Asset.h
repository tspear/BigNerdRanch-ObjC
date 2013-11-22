//
//  Asset.h
//  BMITime
//
//  Created by Tim Spear on 29/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@end