//
//  Person.h
//  BMITime
//
//  Created by Tim Spear on 09/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>


// The calls Person inherits all the instance variables
// and methods defined by the class NSObject
@interface Person : NSObject
{
    // it has 2 instance variables
    float heightInMeters;
    int weightInKilos;
}
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;
@end
