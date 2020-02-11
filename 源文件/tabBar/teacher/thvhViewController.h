//
//  thvhViewController.h
//  tabBar
//
//  Created by 312 on 2019/5/31.
//  Copyright © 2019年 D04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Took.h"

NS_ASSUME_NONNULL_BEGIN

@interface thvhViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookname;
@property (weak, nonatomic) IBOutlet UITextView *introduce;

@property(nonatomic,strong)Took *book;
@end

NS_ASSUME_NONNULL_END
