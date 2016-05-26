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
    self.bigLabel =[[UILabel alloc]initWithFrame:CGRectMake(3, 0, kScreenWidth, 25)];
    self.bigLabel.text = @"今日受理。。。。";
    self.bigLabel.textAlignment =UITextAlignmentLeft;

    [self.contentView addSubview:self.bigLabel];
    self.LBimgView =[[UIImageView alloc]initWithFrame:CGRectMake(3, 30, 15, 20)];
    self.LBimgView.image =[UIImage imageNamed:@""];
    [self.contentView addSubview:_LBimgView];
    
    self.dataLabel =[[UILabel alloc]initWithFrame:CGRectMake(20, 30, 50, 20)];
    self.dataLabel.text = @"[05-26]";
    [self.contentView addSubview:self.dataLabel];
    self.textButton =[UIButton buttonWithType:UIButtonTypeSystem];
//    self.textButton.frame =CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
}


@end
