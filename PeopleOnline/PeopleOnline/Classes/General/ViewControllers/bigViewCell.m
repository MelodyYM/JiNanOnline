//
//  bigViewCell.m
//  PeopleOnline
//
//  Created by LN on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "bigViewCell.h"

@implementation bigViewCell

#pragma mark - 初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self allViews];
    }
    return self;
}

#pragma mark - 添加视图

- (void)allViews{
    
    self.bigImgView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    self.bigImgView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:_bigImgView];
    
    self.dataLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 10, 80, 50)];
    self.dataLabel.text = @"05-25";
    self.dataLabel.font =[UIFont boldSystemFontOfSize:22];
    
    [self.bigImgView addSubview:self.dataLabel];
    
    self.headLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 110, kScreenWidth, 30)];
    self.headLabel.text = @"新闻标题";
    self.headLabel.font =[UIFont boldSystemFontOfSize:20];
    self.headLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:self.headLabel];
    
    
    
}


@end
