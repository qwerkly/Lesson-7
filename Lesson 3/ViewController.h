//
//  ViewController.h
//  Lesson 3
//
//  Created by mac on 06.04.15.
//
//

#import <UIKit/UIKit.h>
#import "MakeArray.h"

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, MakeArrayDelegate>

@property(nonatomic, assign) BOOL isFirstArray;


@end

