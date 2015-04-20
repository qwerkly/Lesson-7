//
//  CustomTableViewCell.h
//  Lesson 3
//
//  Created by mac on 14.04.15.
//
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView_Product;

@property (strong, nonatomic) IBOutlet UILabel *label_ProductValue;

@property (strong, nonatomic) IBOutlet UILabel *label_ProductPrice;

@end
