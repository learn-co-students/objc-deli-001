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

- (NSString *) stringWithDeliLine: (NSMutableArray *)deliLine {
    NSUInteger numpeople = [deliLine count];
    NSString *peopleInLine;
    if (numpeople == 0) {
        return @"The line is currently empty.";
    }
    NSString *sentence = @"";
    for (NSUInteger i = 0; i < numpeople; i++) {
        peopleInLine = [NSString stringWithFormat:@"\n%li. %@", i+1, deliLine[i]];
        
        sentence = [sentence stringByAppendingFormat:@"%@", peopleInLine];
        
    }
    

    NSString *new = [@"The line is:" stringByAppendingFormat:@"%@,", sentence];
    
    return new;
    
}

- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    for (NSUInteger i = 0; i < 1; i++) {
        [deliLine addObject:name];
    }
    return deliLine;
}


- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    NSString *firstName = [NSString stringWithFormat:@"%@,", deliLine[0]];
    [deliLine removeObjectAtIndex:0];
    return firstName;
}

@end
