//
//  DetailViewConrollerViewController.h
//  Lesson 3
//
//  Created by mac on 10.04.15.
//
//

#import <UIKit/UIKit.h>

@interface DetailViewConroller : UIViewController

@property (strong, nonatomic) IBOutlet NSString *string_theThing;

@property (strong, nonatomic) IBOutlet NSString *string_Cost;

@property (strong, nonatomic) IBOutlet NSString *string_Discr;

@property (strong, nonatomic) IBOutlet UILabel *label_theThing;

@property (strong, nonatomic) IBOutlet UILabel *label_Cost;

@property (strong, nonatomic) IBOutlet UITextView *textView_Discr;

@property (strong, nonatomic) IBOutlet UIImageView *imageView_DetailItem;

- (IBAction)button_Back:(id)sender;

@end
