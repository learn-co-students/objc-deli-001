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

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    NSString *deliLineStatus;
    
    if ([deliLine count] == 0) {
        deliLineStatus = @"The line is currently empty.";
    } else {
        
        deliLineStatus = @"The line is:";
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            
            NSUInteger deliNumber = i + 1;
            NSString *deliNumberString = [@(deliNumber) stringValue];
            
            deliLineStatus = [deliLineStatus stringByAppendingString:@"\n"];
            deliLineStatus = [deliLineStatus stringByAppendingString:deliNumberString];
            deliLineStatus = [deliLineStatus stringByAppendingString:@". "];
            deliLineStatus = [deliLineStatus stringByAppendingString:deliLine[i]];
            
        }
    }
    
    return deliLineStatus;
    
}

- (NSString *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return name;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

@end
