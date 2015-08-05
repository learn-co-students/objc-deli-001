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

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    
    if (![deliLine count]) {
        return @"The line is currently empty.";
    }
    
    NSString *customersInLine = @"The line is:";
    
    for (NSInteger i = 0; i < [deliLine count]; i++) {
        NSInteger numberInLine = i + 1;
        customersInLine = [customersInLine stringByAppendingFormat:@"\n%li. %@", numberInLine, deliLine[i]];
    }
    
    return customersInLine;
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name];
    
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *nextCustomer = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
}

@end
