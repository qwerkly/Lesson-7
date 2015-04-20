//
//  MakeArray.h
//  Lesson 3
//
//  Created by mac on 16.04.15.
//
//

#import <Foundation/Foundation.h>

@protocol MakeArrayDelegate;

@interface MakeArray : NSObject

-(void) firstArray;
-(void) secondArray;

-(NSMutableArray *) theFirstArray;
-(NSMutableArray *) theSecondArray;

@property (weak, nonatomic) id <MakeArrayDelegate> delegate;

@end

@protocol MakeArrayDelegate <NSObject>

-(void) makeArrayFirstArrayReady:(MakeArray *) makeArray FirstArray: (NSMutableArray *) theFirstArray;
-(void) makeArraySecondArrayReady:(MakeArray *)makeArray SecondArray:(NSMutableArray *) theSecondArray;

@end
