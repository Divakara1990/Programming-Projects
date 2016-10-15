//
//  main.m
//  StopWatch
//
//  Created by BridgeLabz on 12/10/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //declaring the variables
        NSString *date2String, *date1String;
        int num;
        int one;
        
        NSLog(@"Enter any number to start the watch");
        scanf("%d",&num);
        
        //setting the date formate
        NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
        [DateFormatter setDateFormat:@"hh:mm:ss"];
        
       // finding the start time & converting the String from date
        date1String = [DateFormatter stringFromDate:[NSDate date]];
        
        // converting back date from string
        NSDate *startDate = [DateFormatter dateFromString:date1String];
        NSLog(@"%@",startDate);
        
        //taking input to stop the watch
        NSLog(@"Enter the number 1 to stop the watch");
        scanf("%d",&one);
        if (one == 1)
        {
            //setting the date formate
            NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
            [DateFormatter setDateFormat:@"hh:mm:ss"];
            
            //finding the time(stop time) & converting to the string formate
            date2String = [DateFormatter stringFromDate:[NSDate date]];
            NSLog(@"%@",date2String);
            NSDate *endDate = [DateFormatter dateFromString:date2String];
            
            // finding the time difference between the start & stop interval
            NSTimeInterval difference = [endDate timeIntervalSinceDate:startDate];
            
            //converting that time from TimeInterval to String
            NSDateComponentsFormatter *dateComponentsFormatter = [[NSDateComponentsFormatter alloc] init];
            NSLog(@"%@", [dateComponentsFormatter stringFromTimeInterval:difference]);
        }
    }
    return 0;
}
