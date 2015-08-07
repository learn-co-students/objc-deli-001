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
    NSMutableArray *customerList = [[NSMutableArray alloc]init];
    if([deliLine count] == 0){
       
        lineLength = @"The line is currently empty.";
        NSLog(@"%@", lineLength);
        
    } else {
        
        for(NSUInteger i = 0; i < (sizeof deliLine) + 1; i++ ){
           
            NSString *customerNum = [NSString stringWithFormat:@"\n%u. %@", i + 1, deliLine[i]];
            [customerList addObject:customerNum];
        
        }
        NSString *stringList = [customerList componentsJoinedByString:@" "];
        lineLength = [NSString stringWithFormat:@"The line is: %@", stringList];
        NSLog(@"%@", lineLength);
    }
                                

    return lineLength;
    
}



-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    if (![deliLine containsObject:@"Michael"]) {
        [deliLine addObject:@"Michael"];
    } else {
        [deliLine addObject:@"Grace"];
    }
    
    return deliLine;
    
}



-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return nextCustomer;
    
}

@end
