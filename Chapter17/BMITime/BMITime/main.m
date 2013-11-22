//
//  main.m
//  BMITime
//
//  Created by Tim Spear on 09/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create an instance of person
        Employee * person = [[Employee alloc] init];
        
        // give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // call the bodymassindex method
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);

        
        
    }
    return 0;
}

