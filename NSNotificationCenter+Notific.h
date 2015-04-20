//
//  NSNotificationCenter+Notific.h
//  Lesson 3
//
//  Created by mac on 21.04.15.
//
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface NSNotificationCenter (Notific)

+(void) set_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object:(UIViewController *) controller;

+(void) delete_Notif;

@end
