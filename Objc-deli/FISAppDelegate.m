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

- (NSString *) stringWithDeliLine: (NSArray *)deliLine{
    
    NSString *result = @"The line is:";
    
    if ([deliLine count] == 0){
        
        return @"The line is currently empty.";
    }
    else {
        for( NSInteger i = 0; i < [deliLine count]; i++){
            
            result = [result stringByAppendingString: @"\n"];
            result = [result stringByAppendingString: [NSString stringWithFormat:@"%li. ", i+1]];
            result = [result stringByAppendingString: deliLine[i]];
        }
    }
    
    return result;
}

- addName: (NSString *)name
toDeliLine: (NSMutableArray *) deliLine{
    
    [deliLine addObject: name ];
    
    return nil;
}

- (NSString *) serveNextCustomerInDeliLine: (NSMutableArray *)deliLine {
    
    NSString *first = deliLine[0];
    
    [ deliLine removeObjectAtIndex:0];
    
    
    return first;
}




@end
