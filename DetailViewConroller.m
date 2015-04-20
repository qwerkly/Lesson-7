//
//  DetailViewConrollerViewController.m
//  Lesson 3
//
//  Created by mac on 10.04.15.
//
//

#import "DetailViewConroller.h"

@interface DetailViewConroller ()


@end

@implementation DetailViewConroller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label_theThing.text = self.string_theThing;
    self.label_Cost.text = [NSString stringWithFormat:@"Цена - %@",self.string_Cost];
    self.textView_Discr.text = self.string_Discr;
    
    NSString * f_jpg = @"jpg";
    
    UIImage * image = [UIImage new];
    
    image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@",self.string_theThing,f_jpg]];
   
    self.imageView_DetailItem.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)button_Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
