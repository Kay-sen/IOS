//
//  DetailController.m
//  tabBar
//
//  Created by 312 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "DetailController.h"
#import "Book.h"

@interface DetailController ()

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.bookname.text=self.book.name;
    self.introduce.text=self.book.detail;
    self.bisaiIMAG.image=[UIImage imageNamed:self.book.tupian];
    self.navigationItem.title=@"详情介绍";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
