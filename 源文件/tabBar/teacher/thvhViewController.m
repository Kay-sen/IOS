//
//  thvhViewController.m
//  tabBar
//
//  Created by 312 on 2019/5/31.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "thvhViewController.h"
#import "Took.h"

@interface thvhViewController ()

@end

@implementation thvhViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.bookname.text=self.book.name;
    self.introduce.text=self.book.detail;
    self.navigationItem.title=@"详情介绍";
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
