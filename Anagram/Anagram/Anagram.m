//
//  Anagram.m
//  Anagram
//
//  Created by BridgeLabz on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Anagram.h"

@implementation Anagram

-(NSString *) removeSpace: (NSString *)str
{
    NSString * s1 =[str stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return s1;
}

-(NSArray *) sort: (NSMutableArray *)arr
{
    NSArray *my_array= [arr sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    for (int i = 0; i < [my_array count]; i++)
    {
        NSLog(@"The Sorted array is %@",my_array[i]);
        //return my_array;
    }
    return my_array;
}

-(NSString *) convertTOString: (NSArray *)array
{
    NSString * str = [[array valueForKey:@"description"] componentsJoinedByString:@""];
    NSLog(@"Converted String is %@",str);
    return str;
}

/*// --------- Function To Make an Array from String
NSArray *makeArrayFromString(NSString *my_string)
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0; i < my_string.length; i ++)
    {
        [array addObject:[NSString stringWithFormat:@"%c", [my_string characterAtIndex:i]]];
    }
    return array;
    
}

// --------- Function To Sort Array
NSArray *sortArrayAlphabetically(NSArray *my_array)
{
    my_array= [my_array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    return my_array;
}

// --------- Function Combine Array To Single String
NSString *combineArrayIntoString(NSArray *my_array)
{
    NSString * combinedString = [[my_array valueForKey:@"description"] componentsJoinedByString:@""];
    return combinedString;
}*/


-(NSString *) toUpper: (NSString *)str
{
    //NSLog(@"%@", [car lowercaseString]);      // lotus bespoke
    NSString * s2 = [str uppercaseString];
    NSLog(@"%@", [str uppercaseString]);// LOTUS BESPOKE
    return s2;
}



-(NSMutableArray *) createCharArray:(NSString*) str
{
    NSMutableArray *letterArray = [NSMutableArray array];
    [str enumerateSubstringsInRange:NSMakeRange(0, [str length])
                                options:(NSStringEnumerationByComposedCharacterSequences)
                             usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                 [letterArray addObject:substring];
                             }];
    
    for (NSString *i in letterArray){
        NSLog(@"%@",i);
    }
    return letterArray;
}
@end
