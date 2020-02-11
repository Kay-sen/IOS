//
//  Took.m
//  tabBar
//
//  Created by 312 on 2019/5/30.
//  Copyright © 2019年 D04. All rights reserved.
//

#import "Took.h"

@interface Took()
@property(nonatomic,copy)NSArray *bookArray;

@end

@implementation Took
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
    NSString *path=[[NSBundle mainBundle]pathForResource:@"Tbook.plist" ofType:nil];
    NSArray *arr=[NSArray arrayWithContentsOfFile:path];
    NSMutableArray *mutableArray=[NSMutableArray array];
    for(NSDictionary *dic in arr){
        [mutableArray addObject:[Took bookWithDict:dic]];
    }
    return mutableArray;
}
@end
