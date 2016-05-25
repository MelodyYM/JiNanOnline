//
//  HomeViewCell.m
//  PeopleOnline
//
//  Created by 李德祥 on 16/5/25.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "HomeViewCell.h"

@implementation HomeViewCell

#pragma mark - 初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self allViews];
    }
    return self;
}

#pragma mark - 添加视图

- (void)allViews{
    
    self.imgView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    self.imgView.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_imgView];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0, 3, kScreenWidth, 40)];
    self.label.text = @"新闻热线05-25";
    self.label.font =[UIFont boldSystemFontOfSize:22];
    [self.imgView addSubview:self.label];
    
    
}

@end
