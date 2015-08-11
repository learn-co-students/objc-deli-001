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


- (NSString*) stringWithDeliLine: (NSMutableArray*) deliLine
{
    NSString (*customerID);
    NSString (*list);
    NSMutableArray *customersInLine = [[NSMutableArray alloc] init];
    
    // If the line is empty return "The line is currently empty."
    
    if (deliLine == nil || deliLine == 0) {
        return @"The line is currently empty.";
    }
    
    // Else return "the line is: \1. NameA. \2. NameB.
    else {
        for (int i = 0; i < [deliLine count]; i++)
        {
            customerID = [NSString stringWithFormat:@"\%d. %@.", (i + 1), deliLine[i]];
            [customersInLine addObject: customerID];
        }
        
        return list = [customersInLine componentsJoinedByString:@" "];
    }
    
}

- (NSString*) addName: (NSString*) name
{
    return name;
}


- (NSMutableArray*) addName: (NSString*) name toDeliLine: (NSMutableArray*) deliLine;
{
    [deliLine addObject: name];
    return deliLine;
}


- (NSString*) serveNextCustomerInDeliLine: (NSMutableArray*) deliLine
{
    NSString (*nextCustomer) = [deliLine objectAtIndex:0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}


@end
