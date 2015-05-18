//
//  PLTgCell.m
//  XibCell
//
//  Created by panglong on 15/5/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "PLTgCell.h"
#import "PLTg.h"

@interface PLTgCell ()

@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end

@implementation PLTgCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * identifer = @"tg";
    PLTgCell * cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"PLTgCell" owner:nil options:nil] firstObject];
    }
    return cell;
}

- (void)setTg:(PLTg *)tg
{
    _tg = tg;
    
    self.price.text = tg.price;
    self.title.text = tg.title;
    
}

@end
