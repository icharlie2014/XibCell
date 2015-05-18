//
//  ViewController.m
//  XibCell
//
//  Created by panglong on 15/5/18.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "PLTg.h"
#import "PLTgCell.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic, strong) NSArray *tgs;

@end

@implementation ViewController

-(NSArray *)tgs
{
    if (_tgs == nil) {
        NSString *fullPath = [[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil];
        NSArray * dictArray = [NSArray arrayWithContentsOfFile:fullPath];
        NSMutableArray * models = [NSMutableArray arrayWithCapacity:dictArray.count];
        for (NSDictionary * dict in dictArray) {
            PLTg * tg = [PLTg tgWithDict:dict];
            [models addObject:tg];
        }
        self.tgs = [models copy];
    }
    return _tgs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - table data 数据代理

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  self.tgs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    PLTgCell * cell = [PLTgCell cellWithTableView:tableView];
    PLTg * tg = self.tgs[indexPath.row];
    cell.tg = tg;
    
    return cell;
}


@end
