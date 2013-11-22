//
//  main.m
//  Groceries
//
//  Created by Tim Spear on 04/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create list Array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // create list items
        NSString *item1 = @"Beans";
        NSString *item2 = @"Eggs";
        NSString *item3 = @"Oven Chips";
        NSString *item4 = @"Bread";
        [groceryList addObject:item1];
        [groceryList addObject:item2];
        [groceryList addObject:item3];
        [groceryList addObject:item4];

        // print array
        NSLog(@"list = %@",groceryList);
        
        // print with fastenum
        for (NSString *i in groceryList) {
            NSLog(@"%@",i);
        }

        
    }
    return 0;
}

