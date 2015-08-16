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
    
    if(!deliLine){NSString *empty = @"The line is currently empty.";
        return empty;}else{
            NSMutableString *lineIs = [[NSMutableString alloc]initWithString:@"The line is: "];
            for (int i =0; i<4; i++) {
                NSString *number = [NSString stringWithFormat:@"%d ", i+1];
                NSMutableString *mutableNumber = [number mutableCopy];
                NSMutableString *itIs =[lineIs stringByAppendingString:mutableNumber];
                NSMutableString *finished =[itIs stringByAppendingString:deliLine[i]];
                return finished;
                
            }
            
        }
    
    return nil;};
-(NSMutableArray *)addName:(NSString *)name: toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    return deliLine;
};
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *serving = [NSString stringWithFormat:@"%@", deliLine[0]];
    [deliLine removeObjectAtIndex:0];
    return serving;
    
};

@end
