//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    
    if  ([deliLine count] == 0) {
        
        NSString *deliString = @"The line is currently empty.";
        
        return deliString;
        
    }
        
        NSString *deliString = @"The line is:";
    
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *nextName = [NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]];
            deliString = [deliString stringByAppendingString:nextName];
            
        }
    
    return deliString;
    
}
    
- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return deliLine;
    
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];

    return nextCustomer;
}


@end
