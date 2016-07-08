//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
 //@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan"
    
    if ([deliLine count] == 0) { //returns this line is empty if line is empty
        return @"The line is currently empty.";
    }
   
    NSMutableString *mutableDeliLine = [NSMutableString string]; // creates empty mutable string
    [mutableDeliLine appendString:@"The line is:"]; // starts mutable string
    for (NSInteger i=0; i< [deliLine count]; i++) {
        NSString *newCustomer = [NSString stringWithFormat:@"\n%lu. %@", (i+1), deliLine[i]]; //creates string to add
        [mutableDeliLine appendString:(NSString *)newCustomer]; //adds to the string with each iteration
    }

    return mutableDeliLine;
    
}


-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {

    [deliLine addObject:name];

    return deliLine;
    
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *theFirstCustomer = deliLine[0];

    [deliLine removeObjectAtIndex:0];
    return theFirstCustomer;
    
}


@end
