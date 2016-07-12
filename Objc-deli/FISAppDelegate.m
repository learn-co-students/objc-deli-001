//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    
    NSMutableArray * line = [[NSMutableArray alloc]init];
    NSString * value = @"The line is:";
    
    for(NSUInteger i = 0; i < [deliLine count]; i++){
        [line addObject:deliLine[i]];
    }
    NSUInteger count= [line count];
    
    if (count < 1){
        return @"The line is currently empty.";
    }
    else{
        for(NSUInteger i = 0; i < [line count]; i++){
            value = [value stringByAppendingFormat:@"\n%lu. %@",i+1, line[i]];
        }
        return value;
    }
    return @"error";
}

-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    NSMutableArray * line = [[NSMutableArray alloc]init];
    
    for(NSUInteger i = 0; i < [deliLine count]; i++){
        [line addObject:deliLine[i]];
    }
        [line addObject: name];
    
    return line;
}

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{

    NSString * currentCustomer = deliLine[0];
    
    [deliLine removeObjectAtIndex:0];
    
    
    return currentCustomer;
}

/*
 
 *  Define your methods here!
 
 */

@end
