//
//  main.m
//  Chapter15Challenge2
//
//  Created by Tim Spear on 04/04/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // open words file
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // break into array
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // store last word
        NSString *lastWord = [NSString string];
        
        // go through array
        for (NSString *i in words) {
                if ([i caseInsensitiveCompare:lastWord] == NSOrderedSame){
                    NSLog(@"found  - %@ and %@", i,lastWord);
                }
            lastWord = i;
        
        }
         
        
        
    }
    return 0;
}

