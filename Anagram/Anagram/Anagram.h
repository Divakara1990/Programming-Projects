//
//  Anagram.h
//  Anagram
//
//  Created by BridgeLabz on 10/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Anagram : NSObject

-(NSString *) removeSpace: (NSString *)str;
//-(NSString *) sort: (NSString *)str;
-(NSArray *) sort: (NSMutableArray *)arr;
-(NSString *) toUpper: (NSString *)str;
-(NSMutableArray *) createCharArray:(NSString*) str;
-(NSString *) convertTOString: (NSArray *)array;
@end
