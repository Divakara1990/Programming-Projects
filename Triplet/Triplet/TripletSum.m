//
//  TripletSum.m
//  Triplet
//
//  Created by BridgeLabz on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "TripletSum.h"

@implementation TripletSum

-(void)print:(int [])arr :(int)n
{
    
    for (int i=0; i<n; i++)
    {
        for (int j=i+1; j<n; j++)
        {
            for (int k=j+1; k<n; k++)
            {
                if ((arr[i]+arr[j]+arr[k])==0)
                {
                    NSLog(@"combination of %i ,%i, and %i is 0",arr[i],arr[j],arr[k]);
                }
            }
        }
    }
}
@end
