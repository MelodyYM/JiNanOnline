//
//  LeftView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/25.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LeftView.h"

@implementation LeftView

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
    
    CGFloat leftViewW = self.frame.size.width-90;
    CGFloat leftViewH = self.frame.size.height;
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, leftViewW-5, 64)];
    bgView.layer.masksToBounds = YES;
    bgView.layer.cornerRadius = 5;
    bgView.backgroundColor = [UIColor colorWithRed:0.475 green:0.718 blue:1.000 alpha:1.000];
    [self addSubview:bgView];
    
    
    UILabel *serviceLable = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 150, 44)];
//    serviceLable.backgroundColor = [UIColor redColor];
    serviceLable.text = @"市民服务热线";
    serviceLable.font = [UIFont boldSystemFontOfSize:20];
    serviceLable.textColor = [UIColor whiteColor];
    [bgView addSubview:serviceLable];
    
    
    UILabel *cityLable = [[UILabel alloc]initWithFrame:CGRectMake(bgView.frame.size.width-60, 20, 60, 44)];
    cityLable.text = @"济南";
    cityLable.textColor = [UIColor whiteColor];
    cityLable.font = [UIFont boldSystemFontOfSize:20];
//    cityLable.backgroundColor = [UIColor redColor];
    [bgView addSubview:cityLable];
    
    
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(bgView.frame), leftViewW, 60)];
//    searchView.backgroundColor = [UIColor cyanColor];
    [self addSubview:searchView];

    
    
    UITextField *searTextField = [[UITextField alloc]initWithFrame:CGRectMake(5, 10, leftViewW-10, 40)];
//    searTextField.background = [UIImage imageNamed:@"soubg.9"];

    searTextField.backgroundColor = [UIColor blackColor];
    
    UIImageView *searImage =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    searImage.backgroundColor = [UIColor redColor];
    
    UIView *bg = [[UIView alloc]init];
    bg.backgroundColor = [UIColor whiteColor];
    searTextField.leftView = bg;
    searTextField.tintColor = [UIColor whiteColor];
    
    [searchView addSubview:searTextField];
    
    
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(searchView.frame), leftViewW, 1)];
    lineView.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [self addSubview:lineView];
    
    
    UIView *moreView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lineView.frame), leftViewW, 300)];
//    moreView.backgroundColor = [UIColor redColor];
    [self addSubview:moreView];
    
    UIView *lineView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 59, leftViewW, 1)];
    lineView1.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [moreView addSubview:lineView1];
    
    UIImageView *loginImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"yonghid"]];
    loginImageView.frame = CGRectMake(15, 10, 40, 40);
    [moreView addSubview:loginImageView];
    
    UILabel *loginLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(loginImageView.frame)+10, 10, 70, 40)];
    loginLabel.text = @"未登录";
    loginLabel.font = [UIFont boldSystemFontOfSize:20];
    loginLabel.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [moreView addSubview:loginLabel];
    

    UIButton *logButton = [UIButton buttonWithType:UIButtonTypeSystem];
    logButton.frame = CGRectMake(leftViewW - 80, 10, 60, 40);
    logButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [logButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [logButton setTitle:@"登录" forState:UIControlStateNormal];
    logButton.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    logButton.layer.masksToBounds = YES;
    logButton.layer.cornerRadius = 5;
    [moreView addSubview:logButton];

    
    UIButton *personButton = [UIButton buttonWithType:UIButtonTypeCustom];
    personButton.frame = CGRectMake(0, CGRectGetMaxY(lineView1.frame), leftViewW, 60);
    [moreView addSubview:personButton];
    
    UIImageView *perImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gerenzx"]];
    perImageView.frame = CGRectMake(15, 10, 40, 40);
    [personButton addSubview:perImageView];
    
    UILabel *perLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(perImageView.frame)+10, 10, 90, 40)];
    perLabel.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    perLabel.text = @"个人中心";
    perLabel.font = [UIFont boldSystemFontOfSize:20];
    [personButton addSubview:perLabel];
    
    UIImageView *arwImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
    arwImageView.frame = CGRectMake(leftViewW-45, 20, 20, 20);
    [personButton addSubview:arwImageView];
    
    UIView *lineView2 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(personButton.frame), leftViewW, 1)];
    lineView2.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [moreView addSubview:lineView2];
    
    UIButton *yijianButton = [UIButton buttonWithType:UIButtonTypeCustom];
    yijianButton.frame = CGRectMake(0, CGRectGetMaxY(lineView2.frame), leftViewW, 60);
    [moreView addSubview:yijianButton];
    
    
    UIImageView *yijianImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"yijianfk"]];
    yijianImageView.frame = CGRectMake(15, 10, 40, 40);
    [yijianButton addSubview:yijianImageView];
    
    
    UILabel *yijianLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(yijianImageView.frame)+10, 10, 90, 40)];
    yijianLabel.text = @"意见反馈";
    yijianLabel.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    yijianLabel.font = [UIFont boldSystemFontOfSize:20];
    [yijianButton addSubview:yijianLabel];
    
    UIImageView *arwImageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
    arwImageView1.frame = CGRectMake(leftViewW-45, 20, 20, 20);
    
    [yijianButton addSubview:arwImageView1];
    
  
    UIView *lineView3 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(yijianButton.frame), leftViewW, 1)];
    lineView3.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [moreView addSubview:lineView3];
    
    UIButton *upButton = [UIButton buttonWithType:UIButtonTypeCustom];
    upButton.frame = CGRectMake(0, CGRectGetMaxY(lineView3.frame), leftViewW, 60);
    [moreView addSubview:upButton];
    
    
    UIImageView *upImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gxsj"]];
    upImageView.frame = CGRectMake(15, 10, 40, 40);
    [upButton addSubview:upImageView];
    
    
    UILabel *upLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(upImageView.frame)+10, 10, 90, 40)];
    upLabel.text = @"更新升级";
    upLabel.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    upLabel.font = [UIFont boldSystemFontOfSize:20];
    [upButton addSubview:upLabel];
    
    UIImageView *arwImageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
    arwImageView2.frame = CGRectMake(leftViewW-45, 20, 20, 20);

    [upButton addSubview:arwImageView2];
    
    
    UIView *lineView4 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(upButton.frame), leftViewW, 1)];
    lineView4.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [moreView addSubview:lineView4];
    
    
    UIButton *aboutButton = [UIButton buttonWithType:UIButtonTypeCustom];
    aboutButton.frame = CGRectMake(0, CGRectGetMaxY(lineView4.frame), leftViewW, 60);
    [moreView addSubview:aboutButton];
    
    UIImageView *aboutImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gy"]];
    aboutImageView.frame = CGRectMake(15, 10, 40, 40);
    [aboutButton addSubview:aboutImageView];
    
    
    UILabel *aboutLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxY(aboutImageView.frame)+15, 10, 90, 40)];
    aboutLabel.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    aboutLabel.text = @"关于";
    aboutLabel.font = [UIFont boldSystemFontOfSize:20];
    [aboutButton addSubview:aboutLabel];
    
    UIImageView *arwImageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
    arwImageView3.frame = CGRectMake(leftViewW-45, 20, 20, 20);
    [aboutButton addSubview:arwImageView3];

    
    UIView *lastLineView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(moreView.frame), leftViewW, 1)];
    lastLineView.backgroundColor = [UIColor colorWithRed:0.396 green:0.643 blue:1.000 alpha:1.000];
    [self addSubview:lastLineView];

    
    
    }


@end
