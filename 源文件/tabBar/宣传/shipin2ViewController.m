//
//  shipin2ViewController.m
//  tabBar
//
//  Created by 312 on 2019/6/1.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "shipin2ViewController.h"
#import <AVFoundation/AVFoundation.h>

#define EYScreenWidth [[UIScreen mainScreen] bounds].size.width
#define EYScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface shipin2ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (weak, nonatomic) IBOutlet UIView *clipView;

@end

@implementation shipin2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.从mainBundle获取test.mp4的具体路径
    NSString * path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp4"];
    //2.文件的url
    NSURL * url = [NSURL fileURLWithPath:path];
    
    //3.根据url创建播放器(player本身不能显示视频)
    AVPlayer * player = [AVPlayer playerWithURL:url];
    
    //4.根据播放器创建一个视图播放的图层
    AVPlayerLayer * layer = [AVPlayerLayer playerLayerWithPlayer:player];
    
    layer.masksToBounds= YES;
    
    
    layer.borderColor = [UIColor colorWithRed:206 green:226 blue:252 alpha:1.0f].CGColor;
    //layer.backgroundColor=[];
    
    layer.borderWidth = 5.0f;
    
    layer.cornerRadius = 20.0f;
    
    layer.frame = self.clipView.bounds;
    
    [self.clipView.layer addSublayer:layer];
    
    //7.开始播放
    [player play];
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
