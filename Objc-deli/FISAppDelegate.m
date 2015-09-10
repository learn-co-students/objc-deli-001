//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *peopleOnLine = [[NSMutableString alloc]init];
    
    if ([deliLine count] == 0) {
        peopleOnLine = [NSMutableString stringWithString: @"The line is currently empty."];
    } else {
        peopleOnLine = [NSMutableString stringWithString:@"The line is:"];

        // For every person on line, add their name to string
        for(NSInteger i = 0; i < [deliLine count]; i++) {
            NSString *currentCustomer = [NSMutableString stringWithFormat: @"\n%ld. %@", (i + 1), deliLine[i]];
            peopleOnLine = (NSMutableString *)[peopleOnLine stringByAppendingString:currentCustomer];
        }
        
    }

    return peopleOnLine;
}

-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *currentCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return currentCustomer;
}


@end
