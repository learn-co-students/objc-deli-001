//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString*) stringWithDeliLine:(NSMutableArray *)deliLine{
    NSString *deliLineList = @"The line is:\n";
    if ([deliLine count]==0) {
        return @"The line is currently empty.";
    }
    else{
        for (NSInteger i=0; i<[deliLine count]; i++) {
            if (i!=[deliLine count]-1) {
                deliLineList=[deliLineList stringByAppendingString:[NSString stringWithFormat: @"%li. %@\n",i+1,deliLine[i]]];
            }
            else {
                deliLineList=[deliLineList stringByAppendingString:[NSString stringWithFormat: @"%li. %@",i+1,deliLine[i]]];
            }
        }
        return deliLineList;
    }
}

- (NSMutableArray*) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:(@"%@", name)];
    return deliLine;
}

- (NSString*) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}

@end
