//
//  main.m
//  PrimeFactorization
//
//  Program to print the PrimeFactor of the number
//
//  Created by BridgeLabz on 07/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFactor.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        PrimeFactor *prime = [[PrimeFactor alloc] init];
        int number;
        
        NSLog(@"Enter the Number to find the PrimeFactor");
        scanf("%i",&number);
        
        [prime display:number];
    }
    return 0;
}
