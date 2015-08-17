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



-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    NSMutableString *lineIs = [NSMutableString new];
    if([deliLine count] == 0){
       
        [lineIs appendString:@"The line is currently empty."];
        NSLog(@"%@", lineIs);
        
    } else {
        [lineIs appendString:@"The line is:"];
        for(NSUInteger i = 0; i < (deliLine.count); i++ ){
            NSUInteger numInLine = i + 1;
            [lineIs appendFormat:@"\n%u. %@", numInLine , deliLine[i]];
        }
    }
    

    return lineIs;
    
}



-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    return deliLine;
    
}



-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
    
}

@end
