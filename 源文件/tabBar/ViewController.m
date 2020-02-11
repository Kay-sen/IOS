//
//  ViewController.m
//  tabBar
//
//  Created by D04 on 2019/4/23.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "ViewController.h"
#import "shouyeViewController.h"

@interface ViewController ()

//首页轮播

//活动主页

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"one" sender:self];
}

@end
