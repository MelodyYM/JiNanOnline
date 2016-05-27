//
//  HomeNotifierCell.m
//  PeopleOnline
//
//  Created by LN on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "HomeNotifierCell.h"

@implementation HomeNotifierCell
#pragma mark - 初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self allViews];
    }
    return self;
}

- (void)allViews{
    self.bigLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 25)];
    self.bigLabel.text = @"今日受理。。。。";
    self.bigLabel.font = [UIFont systemFontOfSize:18];
    self.bigLabel.textColor = [UIColor whiteColor];
    self.bigLabel.backgroundColor =[UIColor blueColor];
    self.bigLabel.textAlignment =UITextAlignmentCenter;

    [self.contentView addSubview:self.bigLabel];
    self.LBimgView =[[UIImageView alloc]initWithFrame:CGRectMake(20, 30, 15, 18)];
    self.LBimgView.image =[UIImage imageNamed:@"laba"];
    [self.contentView addSubview:_LBimgView];
    
    self.dataLabel =[[UILabel alloc]initWithFrame:CGRectMake(40, 30, 60, 20)];
    self.dataLabel.text = @"[05-26]";
    self.dataLabel.font = [UIFont systemFontOfSize:15];
    self.dataLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.dataLabel];
    self.textButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.textButton.frame =CGRectMake(100, 30, kScreenWidth - 70, 20);
    //self.textButton.backgroundColor =[UIColor redColor];
    [self.textButton setTitle:@"降水通知" forState:UIControlStateNormal];
    self.textButton.titleLabel.font = [UIFont systemFontOfSize:13];
    self.textButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
   [self.contentView addSubview:self.textButton];
    self.moreButton =[UIButton buttonWithType:UIButtonTypeSystem];
    self.moreButton.frame =CGRectMake( kScreenWidth - 40, (kScreenHeight-49-64)/3-30 , 40, 25);
    self.moreButton.titleLabel.text = @"更多...";
    //self.moreButton.backgroundColor =[UIColor redColor];
    self.moreButton.titleLabel.font =[UIFont systemFontOfSize:15];
    self.moreButton.tintColor =[UIColor blueColor];
    [self.moreButton addTarget:self action:@selector(moreBUttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
   [self.contentView addSubview:self.moreButton];
    
    
}

- (void)moreBUttonAction:(UIButton *)sender{
    NSLog(@"显示更多内容");
    
    
}

@end
