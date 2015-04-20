//
//  ViewController.m
//  Lesson 3
//
//  Created by mac on 06.04.15.
//
//

#import "ViewController.h"
#import "DetailViewConroller.h"
#import "CustomTableViewCell.h"
#import "MakeArray.h"

@interface ViewController ()

@property(nonatomic, strong) NSMutableArray * result;
@property(nonatomic, strong) MakeArray * makeArray;


- (IBAction)backAction:(id)sender;
- (IBAction)button_FirstArray:(id)sender;
- (IBAction)button_SecondArray:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.result = [NSMutableArray array];
    
    if(self.isFirstArray)
        [self firstArray];
    else
        [self secondArray];
        }

-(void) firstArray {
//    self.isFirstArray = YES;
//    [self.result removeAllObjects];
//    self.result = [MakeArray firstArray];
}

-(void) secondArray {
//    self.isFirstArray = NO;
//    [self.result removeAllObjects];
//    self.result = [MakeArray secondArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

-(void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0]withRowAnimation:UITableViewRowAnimationFade];   }       );
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.result.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * simpleTableIdentifiter = @"Cell";
    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifiter];
    
    if(self.isFirstArray) {
    cell.label_ProductValue.text = [[self.result objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.label_ProductPrice.text = [[self.result objectAtIndex:indexPath.row]objectForKey:@"price"];
    }
    else {
    cell.label_ProductValue.text = [[self.result objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.label_ProductPrice.text = [[self.result objectAtIndex:indexPath.row]objectForKey:@"price"];
    }
    
    
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[self.result objectAtIndex:indexPath.row]objectForKey:@"value"]]];
    
    cell.imageView_Product.image = image;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    DetailViewConroller * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    NSDictionary * dict = [self.result objectAtIndex:indexPath.row];
    
    detal.string_theThing = [dict objectForKey:@"value"];
    detal.string_Cost = [dict objectForKey:@"price"];
    detal.string_Discr = [dict objectForKey:@"discr"];
    
        [self.navigationController pushViewController:detal animated:YES];
    
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)button_FirstArray:(id)sender {
    MakeArray * marray = [MakeArray new];
    [marray setDelegate:self];
    [marray firstArray];
    
    [self firstArray];
    [self reloadTableView];
}

- (IBAction)button_SecondArray:(id)sender {
    MakeArray * marray = [MakeArray new];
    [marray setDelegate:self];
    [marray secondArray];
    
    [self secondArray];
    [self reloadTableView];
}

#pragma mark - MakeArrayDelegate

-(void) makeArrayFirstArrayReady:(MakeArray *) makeArray FirstArray: (NSMutableArray *) theFirstArray {
    [self.result removeAllObjects];
    self.result = theFirstArray;
    self.isFirstArray = YES;
    [self reloadTableView];
    
}
-(void) makeArraySecondArrayReady:(MakeArray *)makeArray SecondArray:(NSMutableArray *) theSecondArray {
    [self.result removeAllObjects];
    self.result = theSecondArray;
    self.isFirstArray = NO;
    [self reloadTableView];
}

@end
