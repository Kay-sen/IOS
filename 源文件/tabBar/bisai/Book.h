//
//  Book.h
//  tabBar
//
//  Created by 312 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *detail;
@property(nonatomic,copy)NSString *tupian;
+(instancetype)bookWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
+(NSArray *)books;
@end

NS_ASSUME_NONNULL_END
