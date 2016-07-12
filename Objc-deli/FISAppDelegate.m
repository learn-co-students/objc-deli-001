//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";}
        else {
            return @"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan";}
}

- (void) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject: name];
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *firstCustomer = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return firstCustomer;
}

@end

