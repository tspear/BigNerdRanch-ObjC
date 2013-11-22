//
//  main.c
//  BeerSong
//
//  Created by Tim Spear on 28/01/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{

    if (numberOfBottles < 1){
      
        // no more left
        printf("No more bottles of beer\n");
    
    } else {
        
        printf("%d bottles of beer in a row, %d bottles of beer\n", numberOfBottles, numberOfBottles);
        
        int oneLess = numberOfBottles - 1;
        
        printf("Take one down, pass it around, %d bottles of beer\n", oneLess);
        
        //
        singTheSong(oneLess);
        
        printf("recycling  %d \n",oneLess);
        
        
    
    }
}

int main(int argc, const char * argv[])
{
    singTheSong(99);

    return 0;
}

