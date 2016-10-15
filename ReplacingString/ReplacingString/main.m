//
//  main.m
//  ReplacingString
//
//    To replace the string
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
        //declaring the array of character type
       char UserName[40];
        //Taking the input from the User
        NSLog(@"Enter your Name?");
        scanf("%s", UserName);
       
        //converting char array to NSString
        NSString *name = [NSString stringWithCString:UserName encoding:2];
        
        if ([name length] > 3 )
        {
            NSLog(@"Hello %s, How are you?",UserName);
        }
        else
        {
            NSLog(@"Enter the Proper Name(Minimum 3 Characters");
        }
        
    }
    return 0;

}