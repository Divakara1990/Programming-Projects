//
//  main.m
//  ReplacingString
//
//  Created by BridgeLabz on 03/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

/*User Input and Replace String Template “Hello <<UserName>>, How are you?”
I/P -> Take User Name as Input. Ensure UserName has min 3 char
Logic -> Replace <<UserName>> with the proper name
O/P -> Print the String with User Name*/

#import <Foundation/Foundation.h>
int main (int argc, const char *argv[])
{
    @autoreleasepool
    {
        //Declaring the Object reference of NSString
        NSString *firstName;
        NSString *str = @"HELLO ";
         NSString *str1;
        char cstring[40];
        //Taking the input from the User
        NSLog(@"What is the first name?");
        scanf("%s", cstring);
       
        firstName = [NSString stringWithCString:cstring encoding:1];
        str1 = [str stringByAppendingFormat:firstName];
        NSString *str2 = [str1 stringByAppendingFormat:@", How are you?"];
        NSLog(str2);
        
            }
    return 0;

}