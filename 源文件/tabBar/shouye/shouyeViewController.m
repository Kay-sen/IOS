//
//  shouyeViewController.m
//  tabBar
//
//  Created by 312 on 2019/5/27.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "shouyeViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface shouyeViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *lunboScoller;
@property (weak, nonatomic) IBOutlet UIPageControl *pageController;
@property(nonatomic,strong)NSTimer *timer;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segments;
@property (weak, nonatomic) IBOutlet UIImageView *img;
-(void)selectchange:(UISegmentedControl *)sender;
@end

@implementation shouyeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //lunbo
    int count=3;
    CGFloat imageY=0;
    CGFloat imageW=self.lunboScoller.frame.size.width;
    CGFloat imageH=self.lunboScoller.frame.size.height;

    for (int i=0; i<count; i++) {
        UIImageView *imageView=[[UIImageView alloc]init];
        CGFloat imageX=i*imageW;
        imageView.frame=CGRectMake(imageX, imageY, imageW, imageH);
        NSString *imageName=[NSString stringWithFormat:@"img_0%d",i+1];
        imageView.image=[UIImage imageNamed:imageName];
        [self.lunboScoller addSubview:imageView];
    }
    
    self.lunboScoller.contentSize=CGSizeMake(3*imageW, 0);
    self.lunboScoller.showsHorizontalScrollIndicator=NO;
    self.pageController.numberOfPages=count;
    self.lunboScoller.pagingEnabled=YES;
    [self addTimer];
    
    //segment
    [self.segments addTarget:self action:@selector(selectchange:) forControlEvents:UIControlEventValueChanged];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**
 *  添加定时器方法
 */
- (void)addTimer
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}
/**
 *  移除定时器
 */
- (void)removeTimer{
    [self.timer invalidate];
    self.timer = nil;
}
// 定时器调用的方法
- (void)nextImage
{
    // 图片的总数
    int count = 3;
    // 增加pageControl的页码
    int page = 0;
    if (self.pageController.currentPage == count - 1) {
        page = 0;
    } else {
        page = self.pageController.currentPage + 1;
    }
    // 计算scrollView滚动的位置
    CGFloat offsetX = page * self.lunboScoller.frame.size.width;
    CGPoint offset = CGPointMake(offsetX, 0);
    [self.lunboScoller setContentOffset:offset animated:YES];
}
#pragma mark - UIScrollViewDelegate方法
/**
 *  当scrollView正在滚动就会调用
 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    // 根据scrollView的滚动位置决定pageControl显示第几页
    CGFloat scrollW = scrollView.frame.size.width;
    int page = (scrollView.contentOffset.x + scrollW * 0.5) / scrollW;
    self.pageController.currentPage = page;
}
/**
 *  开始拖拽的时候调用
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    // 停止定时器（一旦停止，就不能再使用）
    [self removeTimer];
}
/**
 *  停止拖拽的时候调用方法
 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    // 开启定时器
    [self addTimer];
}

//segment
-(void)selectchange:(UISegmentedControl *)sender{
    switch ([sender selectedSegmentIndex]){
        case 0:
            self.img.image=[UIImage imageNamed:@"segment0.jpg"];
            break;
        case 1:
            self.img.image=[UIImage imageNamed:@"segment1.jpg"];
            break;
        case 2:
            self.img.image=[UIImage imageNamed:@"segment2.jpg"];
            break;
        default:
            break;
    }
}

@end
