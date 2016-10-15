//
//  Gambler.m
//  Gambler
//
//  Created by BridgeLabz on 08/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import "Gambler.h"
//implementing the Gambler class
static NSString *_defaultModel;
@implementation Gambler

//generating the setters nd getters
@synthesize stakes,goals,trials;

//method to set the values which is taken from the user
//-(void)setToS:(int)stk G:(int)gol T:(int)tri
//{
//    stakes = stk;
//    goals = gol;
//    trials = tri;
//}

//performing the operation & displaying the result
-(void)display
{
    
    int wins = 0;
    
    //to check for the number of trials
    for (int  i = 0; i<trials; i++)
    {
        //initializing the cash to the actual stake amount
        int cash = stakes;
        int bets = 0;
        //loop continue till he/she win or broke
        while (cash > 0 && cash < goals)
        {
            bets++;
            NSLog(@"%d is the value of bets",bets);
            if((float)arc4random_uniform(10)/10<0.5)
            {
                cash++;
            }
            else
                cash--;
        }
        NSLog(@"total bets: %i",bets);
        
        //if cash equals to goal then he/she wins
        if (cash == goals)
        {
            wins++;
        }
    }
    
    NSLog(@"total wins: %i",wins);
    
    NSLog(@"percentage of wins: %f", (double)wins*100 / trials);
    NSLog(@"percentage of loss: %f", (double)(trials-wins)*100 / trials);
}

+ (void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];
    NSLog(@"%@ this is a brand",_defaultModel);
}

@end
