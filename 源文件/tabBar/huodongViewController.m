//
//  huodongViewController.m
//  tabBar
//
//  Created by 312 on 2019/6/1.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "huodongViewController.h"

@interface huodongViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation huodongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView.contentSize = CGSizeMake(375,600);
    //self.scrollView.frame =UIE(375, 554);
    self.scrollView.contentOffset=CGPointMake(0, -54);
    self.scrollView.contentInset=UIEdgeInsetsMake(0, 0, 1800, 0);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
