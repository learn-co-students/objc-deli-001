//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    if ([deliLine count] != 0) {
        NSString *line = @"The line is:";
        for (int i=0; i < [deliLine count]; i++){
            line = [line stringByAppendingString: [NSString stringWithFormat:@"\n%d. %@", i+1, deliLine[i]]];
        }
        return line;
    }
    
    return @"The line is currently empty.";
}

- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
    return deliLine;
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *served = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return served;
}

@end
