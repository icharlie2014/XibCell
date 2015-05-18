//
//  PLTgCell.h
//  XibCell
//
//  Created by panglong on 15/5/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PLTg;

@interface PLTgCell : UITableViewCell

@property (nonatomic, strong) PLTg *tg;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
