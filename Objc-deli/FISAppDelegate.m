//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
 
    if (!deliLine || [deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        NSMutableString *line = [@"The line is:" mutableCopy];
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            [line appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
        }
        
        return line;
    }
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *nextCustomer = nil;
    
    if (deliLine && [deliLine count] != 0) {
        nextCustomer = deliLine[0];
        [deliLine removeObjectAtIndex:0];
    }
    
    return nextCustomer;
}


@end
