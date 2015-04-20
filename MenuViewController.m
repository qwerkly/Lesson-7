//
//  MenuViewController.m
//  Lesson 3
//
//  Created by mac on 15.04.15.
//
//

#import "MenuViewController.h"

@interface MenuViewController ()

@property (strong, nonatomic) IBOutlet UIButton *button_First;

@property (strong, nonatomic) IBOutlet UIButton *button_Another;

- (IBAction)switch_One:(id)sender;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button_First addTarget:self action:@selector(go_First) forControlEvents:UIControlEventTouchUpInside];
    [self.button_Another addTarget:self action:@selector(go_Another) forControlEvents:UIControlEventTouchUpInside];

}
     
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) notifMetod {
         
}


-(void) go_First {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    
    view.isFirstArray = YES;
    
    [self.navigationController pushViewController:view animated:YES];
}

-(void) go_Another {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    
    view.isFirstArray = NO;
    
    [self.navigationController pushViewController:view animated:YES];
}

- (IBAction)switch_One:(id)sender {
    UISwitch * switchUI = (UISwitch *) sender;
    if (switchUI.on)
        self.view.backgroundColor = [UIColor grayColor];
    else
        self.view.backgroundColor = [UIColor whiteColor];
}

-(void) notif_Method {
    NSLog(@"notif_Method");
}

-(void) viewWillAppear:(BOOL)animated {
    [NSNotificationCenter set_Notif:test_Const Selector:@selector(notif_Method) Object:self];
}

-(void) viewDidAppear:(BOOL)animated {
    NSLog(@"didAppear");
}

-(void) viewWillDisappear:(BOOL)animated {
    NSLog(@"willDisappear");
    [NSNotificationCenter delete_Notif];
}

-(void) viewDidDisappear:(BOOL)animated {
    NSLog(@"didDisappear");
}

@end
