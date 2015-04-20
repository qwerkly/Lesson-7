//
//  NSNotificationCenter+Notific.m
//  Lesson 3
//
//  Created by mac on 21.04.15.
//
//

#import "NSNotificationCenter+Notific.h"

@implementation NSNotificationCenter (Notific)

+(void) set_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object:(UIViewController *) controller {
    
    [[NSNotificationCenter defaultCenter]addObserver:controller selector:name_Method name:name_Notif object:nil];
    
}

+(void) delete_Notif {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
}

@end
