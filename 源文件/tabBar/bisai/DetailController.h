//
//  DetailController.h
//  tabBar
//
//  Created by 312 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface DetailController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookname;
@property (weak, nonatomic) IBOutlet UITextView *introduce;
@property (weak, nonatomic) IBOutlet UIImageView *bisaiIMAG;
@property(nonatomic,strong)Book *book;
@end
