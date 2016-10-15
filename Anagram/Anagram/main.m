//
//  main.m
//  Anagram
//
//  Created by BridgeLabz on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
         NSLog(@"Enter the First String");
        char str1[40];
        //scanf("%[^\n]", str1);
        scanf(" %[^\n]s",str1);
        NSString * String1 = [NSString stringWithCString:str1 encoding:3];
        
        
        
        Anagram *anaObj = [[Anagram alloc]init];
     
        NSString *noSpace1 = [anaObj removeSpace:String1];
        NSLog(@"String without Space %@",noSpace1);
        NSString *upper = [anaObj toUpper:noSpace1];
        NSLog(@"string in UpperCase %@",upper);
        NSMutableArray *arr1 = [anaObj createCharArray:noSpace1];
        NSArray *sortedArray = [anaObj sort:arr1];
        NSString *finalString = [anaObj convertTOString:sortedArray];
        
        NSLog(@"Enter the second String");
        char str2[40];
        //scanf("%[^\n]",str2);
        scanf(" %[^\n]s",str2);
        NSString * String2 = [NSString stringWithCString:str2 encoding:3];
        NSLog(@"%@ Second String is",String2);
        
        NSString *noSpace2 = [anaObj removeSpace:String2];
        NSLog(@"String without Space %@",noSpace2);
        NSString *upperSub = [anaObj toUpper:noSpace2];
        NSLog(@"string in UpperCase %@",upperSub);
        NSMutableArray *arr1Sub = [anaObj createCharArray:noSpace2];
        NSArray *sortedArraySub = [anaObj sort:arr1Sub];
        NSString *finalSubString = [anaObj convertTOString:sortedArraySub];
        
        if ([finalString isEqualToString:finalSubString])
        {
            NSLog(@"Its an ANAGRAM");
        
        }
        else
        {
            NSLog(@"Its not an ANAGRAM");
        }
    return 0;
    }
}