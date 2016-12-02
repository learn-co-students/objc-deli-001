//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString*)stringWithDeliLine:(NSMutableArray*)deliLine {
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        NSString *lineList = @"The line is:";
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *place = [NSString stringWithFormat: @"\n%lu. %@", i + 1, deliLine[i]];
            lineList = [lineList stringByAppendingString: place ];
        }
        return lineList;
    }
}

- (NSMutableArray*)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine{
    [deliLine addObject:name];
    return deliLine;
}

- (NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine{
    NSString *next = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return next;
}

@end
