//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}



- (NSString *)stringWithDeliLine:(NSArray *)deliLine{


    NSString *emptyLine = @"The line is currently empty.";
    
    if ([deliLine count] == 0) {
        return emptyLine;
    }
    

    NSString *customerCount = @"The line is:";
    NSUInteger i;
    
    for (i = 0; i < [deliLine count]; i++) {
        NSNumber *lineCount = @(i +1);
        customerCount = [customerCount stringByAppendingFormat:@"\n%@. %@", lineCount,deliLine[i]];
        NSLog(@"%@",customerCount);
    }
    
    
    return customerCount;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{

    [deliLine addObject:name];
    NSLog(@"%@",deliLine);

}



- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *saveFirstName = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    NSLog(@"%@",deliLine);
    return saveFirstName;
}
@end
