//
//  IBAppleDevice.h
//  Lesson 3
//
//  Created by mac on 09.04.15.
//
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface IBAppleDevice : NSObject

@property(nonatomic, strong) NSString * model;
@property(nonatomic, strong) NSString * cost;

@end
