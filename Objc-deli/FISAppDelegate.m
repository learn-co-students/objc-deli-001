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

- (NSString *)stringWithDeliLine: (NSArray *)deliLine {
    NSString *deliLineString = @"The line is:";
    if([deliLine count]==0) {
        return @"The line is currently empty.";
    }
    
    for(NSUInteger i=0; i<[deliLine count]; i++) {
        NSNumber *positionInLine = @(i+1);
        deliLineString = [deliLineString stringByAppendingFormat:@"\n%@. %@",positionInLine,deliLine[i]];
    }
    return deliLineString;
}

- (void)addName: (NSString *)name toDeliLine: (NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    NSString * deliLineName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return deliLineName;
}

@end
