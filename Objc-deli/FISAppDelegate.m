//  FISAppDelegate.m

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

- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSString *phrase = @"The line is:";
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        for (NSUInteger i = 0; i < [deliLine count] ; i++) {
            phrase = [phrase stringByAppendingFormat:@"\n%lu. %@", i+1, deliLine[i]];
        }
    }
    return phrase;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *servedCustomer = deliLine[0];
    [deliLine removeObjectAtIndex: 0];
    return servedCustomer;
}
@end
