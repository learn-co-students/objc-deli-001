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


-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine; //stringWithDeliLine method


-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine; //addname:toDeliLine method


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine; //serveNextCustomerInDeliLine method




@end
