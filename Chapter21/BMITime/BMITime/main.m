//
//  main.m
//  BMITime
//
//  Created by Tim Spear on 09/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        for (int i = 0; i < 10; i++)
        {
            // create an instance of Employee
            Employee * person = [[Employee alloc] init];
            
            // give the instance variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            // Put the employee in the employees array
            [employees addObject:person];
            
            // Is this the first employee?
            if (i == 0)
            {
                [executives setObject:person forKey:@"CEO"];
            }
            // Is this the second employee?
            if (i == 1)
            {
                [executives setObject:person forKey:@"CTO"];
            }
        
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // Create 10 assets
        for (int i = 0; i < 10; i++)
        {
            // Create an Asset
            Asset *asset = [[Asset alloc] init];
            
            //give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // assign an asset to the employee
            [randomEmployee addAssetsObject:asset];
            
            // Assign the asset to the employee
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        
        NSLog(@"Employees: %@",employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@",allAssets);
    
        NSLog(@"executives: %@", executives);
        executives = nil;

        NSPredicate *predicate = [NSPredicate predicateWithFormat:
                                                  @"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
        
    }
    sleep(100);
    return 0;
}

