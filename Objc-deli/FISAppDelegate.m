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
    
    NSMutableString *deliMutableString = [[NSMutableString alloc] initWithFormat:@"The line is:"];
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        NSString *names = deliLine[i];
        NSString *customers = [NSString stringWithFormat:@"\n%lu. %@", i+1, names];
        [deliMutableString appendString:customers];
    }
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    

    NSString *newString = [NSString stringWithString:deliMutableString]; //conversion
    
    return newString;
}





- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name];
    
    return deliLine;
}




// Passed
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *firstName = deliLine[0]; // saved the first name in the deliLine to an NSString object
    
    [deliLine removeObjectAtIndex:0]; // since NSMutableArray is a void and does not require a capture, we can use removeObjectsAtIndex method
    
    return firstName; // returned the name I saved in the string object
}


@end
