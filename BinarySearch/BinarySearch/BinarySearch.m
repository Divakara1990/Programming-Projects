//
//  BinarySearch.m
//  BinarySearch
//
//  Created by BridgeLabz on 13/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(void) sortingString : (NSMutableArray *)array
{
    id temp;
    int j;
    for (int i=1; i< [array count]; i++)
    {
        temp=[array objectAtIndex:i];
        j=i-1;
        
        while (j>=0 && ([[array objectAtIndex:j] compare: temp]== NSOrderedDescending))
        {
            [array replaceObjectAtIndex:j+1 withObject:[array objectAtIndex:j]] ;
            --j;
        }
        
        [array replaceObjectAtIndex:j+1 withObject:temp];
    }
    
}


@end
