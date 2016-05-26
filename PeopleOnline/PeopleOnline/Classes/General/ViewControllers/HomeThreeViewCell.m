//
//  HomeThreeViewCell.m
//  PeopleOnline
//
//  Created by LN on 16/5/25.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "HomeThreeViewCell.h"

@implementation HomeThreeViewCell

#pragma mark - 初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self allViews];
    }
    return self;
}

#pragma mark - 添加视图

- (void)allViews{
    
    CGFloat cellHeight = self.frame.size.height;
    
    self.imgButton1 =[UIButton buttonWithType:UIButtonTypeCustom];
    self.imgButton1.frame = CGRectMake(50, (kScreenWidth-64-49)/6, (kScreenWidth-140)/3, 100);
    [self.imgButton1 setImage:[UIImage imageNamed:@"ans1"] forState:UIControlStateNormal];

    
    [self.imgButton1 addTarget:self action:@selector(button1Action:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.contentView addSubview:self.imgButton1];
    
    self.imgButton2 = [UIButton buttonWithType:UIButtonTypeCustom];
    self.imgButton2.frame = CGRectMake(70+(kScreenWidth-140)/3,(kScreenWidth-64-49)/6, (kScreenWidth-140)/3, 100);
    [self.imgButton2 setImage:[UIImage imageNamed:@"ans2"] forState:UIControlStateNormal];
    [self.imgButton2 addTarget:self action:@selector(button2Action:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.contentView addSubview:self.imgButton2];
    
    self.imgButton3 = [UIButton buttonWithType:UIButtonTypeCustom];
    self.imgButton3.frame = CGRectMake(kScreenWidth - 50 -(kScreenWidth-140)/3,(kScreenWidth-64-49)/6, (kScreenWidth-140)/3, 100);
    [self.imgButton3 setImage:[UIImage imageNamed:@"ans3"] forState:UIControlStateNormal];
    [self.imgButton3 addTarget:self action:@selector(button3Action:) forControlEvents:UIControlEventTouchUpInside];
   // self.imgButton3.backgroundColor =[UIColor blueColor];
    
    [self.contentView addSubview:self.imgButton3];

    
}

- (void)button1Action:(UIButton *)sender{
    
}

- (void)button2Action:(UIButton *)sender{
    
}
- (void)button3Action:(UIButton *)sender{
    
}
@end
