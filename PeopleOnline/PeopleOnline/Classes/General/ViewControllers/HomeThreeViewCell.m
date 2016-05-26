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
    
    self.imgButton1 =[UIButton buttonWithType:UIButtonTypeSystem];
    self.imgButton1.frame = CGRectMake(50, (cellHeight-100)/2, (kScreenWidth-140)/3, 100);
    [self.imgButton1 setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    self.imgButton1.backgroundColor =[UIColor redColor];
    
    [self.imgButton1 addTarget:self action:@selector(button1Action:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.contentView addSubview:self.imgButton1];
    
    self.imgButton2 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.imgButton2.frame = CGRectMake(130, 50, 80, 100);
    [self.imgButton2 setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.imgButton2 addTarget:self action:@selector(button2Action:) forControlEvents:UIControlEventTouchUpInside];
    self.imgButton2.backgroundColor =[UIColor grayColor];
    [self.contentView addSubview:self.imgButton2];
    
    self.imgButton3 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.imgButton3.frame = CGRectMake(230, 50, 80, 100);
    [self.imgButton3 setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.imgButton3 addTarget:self action:@selector(button3Action:) forControlEvents:UIControlEventTouchUpInside];
    self.imgButton3.backgroundColor =[UIColor blueColor];
    
    [self.contentView addSubview:self.imgButton3];

    
}

- (void)button1Action:(UIButton *)sender{
    
}

- (void)button2Action:(UIButton *)sender{
    
}
- (void)button3Action:(UIButton *)sender{
    
}
@end
