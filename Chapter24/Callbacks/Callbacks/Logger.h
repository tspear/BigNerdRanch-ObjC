//
//  Logger.h
//  Callbacks
//
//  Created by Tim Spear on 14/05/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;
@end
