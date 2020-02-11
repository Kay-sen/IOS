//
//  Book.m
//  tabBar
//
//  Created by 312 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "Book.h"

@interface Book()
@property(nonatomic,copy)NSArray *bookArray;

@end

@implementation Book
+(instancetype)bookWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}
-(instancetype)initWithDict:(NSDictionary *)dict{
    if(self=[super init]){
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(NSArray *)books{
    NSString *path=[[NSBundle mainBundle]pathForResource:@"book.plist" ofType:nil];
    NSArray *arr=[NSArray arrayWithContentsOfFile:path];
    NSMutableArray *mutableArray=[NSMutableArray array];
    for(NSDictionary *dic in arr){
        [mutableArray addObject:[Book bookWithDict:dic]];
    }
    return mutableArray;
}
@end
