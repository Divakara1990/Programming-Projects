//
//  Power.h
//  Power
//
//  Created by BridgeLabz on 03/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Power : NSObject


-(int)pow: (int)n : (int)p;

@end


@implementation Power

-(int)pow : (const int)p  : (int)n;
{
    int pw = 1;
    while(n>0)
    {
        pw = pw * p;
        n--;
    }
    return pw;
}
@end