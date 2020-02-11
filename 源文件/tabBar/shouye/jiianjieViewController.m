//
//  jiianjieViewController.m
//  tabBar
//
//  Created by 312 on 2019/6/1.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "jiianjieViewController.h"

@interface jiianjieViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation jiianjieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //CGFloat lastViewY=CGRectGetMaxX(self.lastview.frame)+10;
    self.scrollView.contentSize = CGSizeMake(375,600);
    //self.scrollView.frame =UIE(375, 554);
    self.scrollView.contentOffset=CGPointMake(0, -54);
    self.scrollView.contentInset=UIEdgeInsetsMake(0, 0, 185, 0);
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
