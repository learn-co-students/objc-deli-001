//
//  FISAppDelegate.h
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 *  Declare your methods here!
 
 */

//stringWithDeliLine: should accept an NSMutableArray argument deliLine and return an NSString object.

- (NSString *)stringWithDeliLine:(NSMutableArray *)deliLine;


//addName:toDeliLine: should accept an NSString called name and an NSMutableArray called deliLine as arguments, and return an NSMutableArray.

- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;

//serveNextCustomerInDeliLine: should accept an NSMutableArray called deliLine as an argument and return an NSString.

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;

@end
