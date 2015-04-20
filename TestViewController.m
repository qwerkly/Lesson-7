//
//  TestViewController.m
//  Lesson 3
//
//  Created by mac on 16.04.15.
//
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    if (textField == self.text_Field1)
    NSLog(@"textFieldDidBeginEditing %@",textField.text);

}


-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    return  YES;
}


@end
