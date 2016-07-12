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
- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSMutableString *queue = [[NSMutableString alloc]init];
    if ([deliLine count]==0) {
        [queue appendString:(@"The line is currently empty.")];
        }
    else {[queue appendString:(@"The line is:")];
        for (NSUInteger i=0; i < [deliLine count]; i++) {
        [queue appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
    }}
    return queue;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return firstCustomer;
}

@end
