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

-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    
    if([deliLine count]==0){NSString *empty = @"The line is currently empty.";
        return empty;}else{
            NSMutableString *lineIs = [[NSMutableString alloc]initWithString:@"The line is: "];
            for (int i =0; i<[deliLine count]; i++) {
               [lineIs appendString:[[NSString alloc]initWithFormat:@"%d %@ \n", i+1, deliLine[i]]];
           
                return lineIs;
                
            }
            
        }
    
    return nil;};
- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;{
    [deliLine addObject:name];
    return deliLine;
};
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *serving = [NSString stringWithFormat:@"%@", deliLine[0]];
    [deliLine removeObjectAtIndex:0];
    return serving;
    
};

@end
