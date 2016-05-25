//
//  LaunchView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LaunchView.h"

@implementation LaunchView

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
    
    self.backgroundColor = [UIColor colorWithWhite:0.600 alpha:1.000];
    
    UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 20)];
    blackView.backgroundColor = [UIColor blackColor];
    [self addSubview:blackView];
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(blackView.frame), kScreenWidth-20, 25)];
    nameLabel.backgroundColor = [UIColor colorWithWhite:0.600 alpha:1.000];
    nameLabel.text = @"济南热线";
    nameLabel.font = [UIFont boldSystemFontOfSize:15];
    nameLabel.textColor = [UIColor whiteColor];
    [self addSubview:nameLabel];
    
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(nameLabel.frame), kScreenWidth, kScreenHeight - 45)];
    _scrollView.backgroundColor = [UIColor colorWithRed:1.000 green:0.502 blue:0.000 alpha:1.000];
    [self addSubview:_scrollView];
    
        //添加图片
        NSInteger count=4;
        
        for (int i=0; i<count; i++) {
            
            CGRect frame=CGRectMake(self.frame.size.width*i, 0, self.frame.size.width, self.frame.size.height);
            NSString *name=[NSString stringWithFormat:@"huand%d",i];
            UIImage *image=[UIImage imageNamed:name];
            UIImageView *imageView=[[UIImageView alloc]initWithImage:image];
            imageView.frame=frame;
            [_scrollView addSubview:imageView];
            
            if (i == 0) {
                imageView.backgroundColor = [UIColor orangeColor];
            }if (i == 1) {
                imageView.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
            }if (i == 2) {
                imageView.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
            }if (i == 3) {
                imageView.backgroundColor = [UIColor colorWithRed:0.400 green:1.000 blue:0.400 alpha:1.000];
            }
            
        }
    _scrollView.contentSize=CGSizeMake(kScreenWidth*count, kScreenHeight-45);
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.bounces = NO;
    _scrollView.userInteractionEnabled = YES;
    
    //添加上小点点
    self.pageControl=[[UIPageControl alloc]initWithFrame:CGRectMake(0, self.frame.size.height-60, kScreenWidth, 40)];
    //设置点的个数
    _pageControl.numberOfPages=count;
    
    [self addSubview:_pageControl];
    
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    loginButton.width = 200;
    loginButton.height = 50;
    loginButton.center = CGPointMake(kScreenWidth*3+kScreenWidth/2, kScreenHeight-130);
    [loginButton setBackgroundImage:[UIImage imageNamed:@"tiyan"] forState:UIControlStateNormal];
    [_scrollView addSubview:loginButton];
    
    self.loginButton = loginButton;
    
}

#pragma mark - 实现监听方法

-(void)addTarget:(id)target action:(SEL)action{
    
    [self.loginButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}





@end
