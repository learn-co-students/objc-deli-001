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
    NSString *lineLength;
    NSString *lineIs = @"The line is:";
    if([deliLine count] == 0){
       
        lineLength = @"The line is currently empty.";
        NSLog(@"%@", lineLength);
        
    } else {
        
        for(NSUInteger i = 0; i < (sizeof deliLine) + 1; i++ ){
            lineLength = [lineIs stringByAppendingString:[NSString stringWithFormat:@"\n%d. %@", i+1, deliLine[i]]];
        }
    }
                                

    return lineLength;
    
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
