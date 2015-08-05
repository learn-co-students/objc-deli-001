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
//    NSString *result = [self stringWithDeliLine:@[@"Victoria", @"Mark"]];
//    NSLog(@"%@", result);
    
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

//stringWithDeliLine: should accept an NSMutableArray argument deliLine and return an NSString object.

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    if ([deliLine count] == 0){
        return @"The line is currently empty.";
    }
    NSString *start = @"The line is:";
    NSMutableString *final =[[NSMutableString alloc] init];
    [final appendString:start];
    NSLog(@"!!!!!!!!!!!!!!!!!!!! %@", final);
    
    
    for (NSUInteger i = 0, j = 1; i < [deliLine count]; i++, j++){
        NSString *sentence = [NSString stringWithFormat:@"\n%lu. %@", j, deliLine[i]];
        [final appendString:sentence];
    }
         return final;
}


//addName:toDeliLine: should accept an NSString called name and an NSMutableArray called deliLine as arguments, and return an NSMutableArray.

- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    return deliLine;
}


//serveNextCustomerInDeliLine: should accept an NSMutableArray called deliLine as an argument and return an NSString.

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *firstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstCustomer;
    
}



@end
