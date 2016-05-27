//
//  RegisterView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self addAllViews];
    }
    return self;
}

#pragma mark - 添加视图

-(void)addAllViews{
    
    self.backgroundColor = [UIColor whiteColor];
   
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(10, 0, kScreenWidth-20, kScreenHeight)];
    scrollView.bounces = NO;
//    scrollView.backgroundColor = [UIColor redColor];
    [self addSubview:scrollView];
    
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(10, 30, kScreenWidth-40, 250)];
    bgView.backgroundColor = [UIColor whiteColor];
    bgView.layer.masksToBounds = YES;
    bgView.layer.cornerRadius = 5;
    bgView.layer.borderColor = [[UIColor colorWithWhite:0.702 alpha:1.000] CGColor];
    bgView.layer.borderWidth = 1.5;
    [scrollView addSubview:bgView];
    
    CGFloat bgWidth = bgView.frame.size.width;
    
    UITextField *userTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 10, bgWidth, 40)];
//    userTextField.backgroundColor = [UIColor redColor];
    userTextField.placeholder = @""
    
    UIView *leftView = [[UIView alloc]init];
    leftView.width = 55;
    leftView.height = 40;
    leftView.backgroundColor = [UIColor orangeColor];
    userTextField.leftView = leftView;
    userTextField.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:userTextField];
    
    UILabel *userLabel = [[UILabel alloc]init];
    userLabel.width = 55;
    userLabel.height = 40;
    userLabel.textAlignment = NSTextAlignmentCenter;
    userLabel.text = @"账号:";
    userLabel.font = [UIFont boldSystemFontOfSize:19];
    [leftView addSubview:userLabel];
    
    
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    registerButton.frame = CGRectMake(10, CGRectGetMaxY(bgView.frame)+15, kScreenWidth-40, 44);
    [registerButton setBackgroundColor:[UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000]];
    [registerButton setTitle:@"同意协议并注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont boldSystemFontOfSize:19];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [scrollView addSubview:registerButton];
    
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(registerButton.frame)+15, kScreenWidth-40, 500)];
    contentView.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    [scrollView addSubview:contentView];
    
    scrollView.contentSize = CGSizeMake(kScreenWidth - 40, CGRectGetMaxY(contentView.frame)+20);
    
    
//    UILabel *contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(registerButton.frame)+15, kScreenWidth-40, 250)];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}







@end
