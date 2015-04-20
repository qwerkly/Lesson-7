//
//  TestViewController.h
//  Lesson 3
//
//  Created by mac on 16.04.15.
//
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *text_Field1;

@property (weak, nonatomic) IBOutlet UITextField *text_Field2;

@end
