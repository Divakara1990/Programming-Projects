//
//  Gambler.h
//  Gambler
//
//  Created by BridgeLabz on 08/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gambler : NSObject
{
//    int stakes;
//    int goals;
//    int trials;
}
//to declare variables as Global & for setters nd getters
@property int stakes, goals, trials;
//method declaration to display the results
-(void) display;
+ (void)setDefaultModel:(NSString *)aModel;
//method declaration to set the values
//-(void) setToS:(int)stk G :(int)gol T :(int)tri;

@end
