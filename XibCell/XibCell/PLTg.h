//
//  PLTg.h
//  XibCell
//
//  Created by panglong on 15/5/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PLTg : NSObject

@property (nonatomic,copy) NSString *buyCount;

@property (nonatomic,copy) NSString *icon;

@property (nonatomic,copy) NSString *price;

@property (nonatomic,copy) NSString *title;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)tgWithDict:(NSDictionary *)dict;

@end
