//
//  PLTg.m
//  XibCell
//
//  Created by panglong on 15/5/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "PLTg.h"

@implementation PLTg

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return  self;
}

+ (instancetype)tgWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

@end
