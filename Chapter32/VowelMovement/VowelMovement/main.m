//
//  main.m
//  VowelMovement
//
//  Created by Tim Spear on 14/10/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create the array of strings to devowelize and a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:
                               @"Sauerkraut", @"raygun",@"Big Nerd Ranch", @"Mississippi",  nil];
        NSLog(@"old strings: %@", oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        // create a list of characters that we'll remove from the String
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
    
        
        //  ***** Declare the block variable ******
        ArrayEnumerationBlock devowelizer;
        
        // Assign a block to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // Prevent further iterations
                return;      // Stop this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurences of each
            // with an empty string.
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString: s
                                           withString: @""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [newStrings addObject:newString];
            
        }; // End of Block assignment
        
        
        // Iterate over the array with our block
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@", newStrings);
        
    }
    return 0;
}

