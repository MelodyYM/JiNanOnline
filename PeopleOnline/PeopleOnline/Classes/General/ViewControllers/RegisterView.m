//
//  RegisterView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "RegisterView.h"

@interface RegisterView ()<UITextFieldDelegate>

@end


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
    
    UITextField *userTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 5, bgWidth, 40)];
//    userTextField.backgroundColor = [UIColor redColor];
    userTextField.placeholder = @"不可以填写纯数字";
    userTextField.font = [UIFont boldSystemFontOfSize:18];
    userTextField.delegate = self;
    UIView *leftView = [[UIView alloc]init];
    leftView.width = 55;
    leftView.height = 40;
    userTextField.leftView = leftView;
    userTextField.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:userTextField];
    
    UILabel *userLabel = [[UILabel alloc]init];
    userLabel.width = 55;
    userLabel.height = 40;
    userLabel.textAlignment = NSTextAlignmentCenter;
    userLabel.text = @"账号:";
    userLabel.font = [UIFont boldSystemFontOfSize:18];
    [leftView addSubview:userLabel];
    
    UIView *rightView = [[UIView alloc]init];
    rightView.width = 60;
    rightView.height = 40;
    userTextField.rightView = rightView;
    userTextField.rightViewMode = UITextFieldViewModeAlways;
    UILabel *rightLabel = [[UILabel alloc]init];
    rightLabel.width = 70;
    rightLabel.height = 40;
    rightLabel.text = @"(必填)";
    rightLabel.textColor = [UIColor redColor];
    rightLabel.textAlignment = NSTextAlignmentLeft;
    rightLabel.font = [UIFont boldSystemFontOfSize:18];
    [rightView addSubview:rightLabel];
    
    UIView *lineView1 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(userTextField.frame)+5, bgWidth, 1)];
    lineView1.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    [bgView addSubview:lineView1];
    
    
    UITextField *passTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lineView1.frame)+5, bgWidth, 40)];
    passTextField.placeholder = @"不少于六位";
    passTextField.font = [UIFont boldSystemFontOfSize:18];
    passTextField.delegate = self;
    UIView *passleftView = [[UIView alloc]init];
    passleftView.width = 55;
    passleftView.height = 40;
    passTextField.leftView = passleftView;
    passTextField.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:passTextField];
    
    UILabel *passLabel = [[UILabel alloc]init];
    passLabel.width = 55;
    passLabel.height = 40;
    passLabel.textAlignment = NSTextAlignmentCenter;
    passLabel.text = @"账号:";
    passLabel.font = [UIFont boldSystemFontOfSize:18];
    [passleftView addSubview:passLabel];

    UIView *passrightView = [[UIView alloc]init];
    passrightView.width = 60;
    passrightView.height = 40;
    passTextField.rightView = passrightView;
    passTextField.rightViewMode = UITextFieldViewModeAlways;

    UILabel *passrightLabel = [[UILabel alloc]init];
    passrightLabel.width = 70;
    passrightLabel.height = 40;
    passrightLabel.text = @"(必填)";
    passrightLabel.textColor = [UIColor redColor];
    passrightLabel.textAlignment = NSTextAlignmentLeft;
    passrightLabel.font = [UIFont boldSystemFontOfSize:18];
    [passrightView addSubview:passrightLabel];

    UIView *lineView2 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(passTextField.frame)+5, bgWidth, 1)];
    lineView2.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    [bgView addSubview:lineView2];
    
    
    UITextField *passTextField1 = [[UITextField alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lineView2.frame)+5, bgWidth, 40)];
    passTextField1.placeholder = @"再次输入密码";
    passTextField1.delegate = self;
    passTextField1.font = [UIFont boldSystemFontOfSize:18];
    
    UIView *passleftView1 = [[UIView alloc]init];
    passleftView1.width = 90;
    passleftView1.height = 40;
    passTextField1.leftView = passleftView1;
    passTextField1.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:passTextField1];
    
    UILabel *passLabel1 = [[UILabel alloc]init];
    passLabel1.width = 90;
    passLabel1.height = 40;
    passLabel1.textAlignment = NSTextAlignmentCenter;
    passLabel1.text = @"确认密码:";
    passLabel1.font = [UIFont boldSystemFontOfSize:18];
    [passleftView1 addSubview:passLabel1];
    
    UIView *passrightView1 = [[UIView alloc]init];
    passrightView1.width = 60;
    passrightView1.height = 40;
    passTextField1.rightView = passrightView1;
    passTextField1.rightViewMode = UITextFieldViewModeAlways;
    
    UILabel *passrightLabel1 = [[UILabel alloc]init];
    passrightLabel1.width = 70;
    passrightLabel1.height = 40;
    passrightLabel1.text = @"(必填)";
    passrightLabel1.textColor = [UIColor redColor];
    passrightLabel1.textAlignment = NSTextAlignmentLeft;
    passrightLabel1.font = [UIFont boldSystemFontOfSize:18];
    [passrightView1 addSubview:passrightLabel1];
    
    UIView *lineView3 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(passTextField1.frame)+5, bgWidth, 1)];
    lineView3.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    [bgView addSubview:lineView3];
    
    
    
    UITextField *nameTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lineView3.frame)+5, bgWidth, 40)];
    nameTextField.placeholder = @"";
    nameTextField.font = [UIFont boldSystemFontOfSize:18];
    nameTextField.delegate = self;
    
    UIView *nameleftView = [[UIView alloc]init];
    nameleftView.width = 55;
    nameleftView.height = 40;
    nameTextField.leftView = nameleftView;
    nameTextField.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:nameTextField];
    
    UILabel *nameLabel = [[UILabel alloc]init];
    nameLabel.width = 55;
    nameLabel.height = 40;
    nameLabel.textAlignment = NSTextAlignmentCenter;
    nameLabel.text = @"姓名:";
    nameLabel.font = [UIFont boldSystemFontOfSize:18];
    [nameleftView addSubview:nameLabel];
    
    UIView *namerightView = [[UIView alloc]init];
    namerightView.width = 60;
    namerightView.height = 40;
    nameTextField.rightView = namerightView;
    nameTextField.rightViewMode = UITextFieldViewModeAlways;
    
    UILabel *namerightLabel = [[UILabel alloc]init];
    namerightLabel.width = 70;
    namerightLabel.height = 40;
    namerightLabel.text = @"(必填)";
    namerightLabel.textColor = [UIColor redColor];
    namerightLabel.textAlignment = NSTextAlignmentLeft;
    namerightLabel.font = [UIFont boldSystemFontOfSize:18];
    [namerightView addSubview:namerightLabel];
    
    UIView *lineView4 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(nameTextField.frame)+5, bgWidth, 1)];
    lineView4.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    [bgView addSubview:lineView4];
    
    
    UITextField *phoneTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(lineView4.frame)+5, bgWidth, 40)];
    phoneTextField.placeholder = @"";
    phoneTextField.font = [UIFont boldSystemFontOfSize:18];
    phoneTextField.delegate = self;
    
    UIView *phoneleftView = [[UIView alloc]init];
    phoneleftView.width = 55;
    phoneleftView.height = 40;
    phoneTextField.leftView = phoneleftView;
    phoneTextField.leftViewMode = UITextFieldViewModeAlways;
    [bgView addSubview:phoneTextField];
    
    UILabel *phoneLabel = [[UILabel alloc]init];
    phoneLabel.width = 55;
    phoneLabel.height = 40;
    phoneLabel.textAlignment = NSTextAlignmentCenter;
    phoneLabel.text = @"手机:";
    phoneLabel.font = [UIFont boldSystemFontOfSize:18];
    [phoneleftView addSubview:phoneLabel];

    UIView *phonerightView = [[UIView alloc]init];
    phonerightView.width = 60;
    phonerightView.height = 40;
    phoneTextField.rightView = phonerightView;
    phoneTextField.rightViewMode = UITextFieldViewModeAlways;

    UILabel *phonerightLabel = [[UILabel alloc]init];
    phonerightLabel.width = 70;
    phonerightLabel.height = 40;
    phonerightLabel.text = @"(必填)";
    phonerightLabel.textColor = [UIColor redColor];
    phonerightLabel.textAlignment = NSTextAlignmentLeft;
    phonerightLabel.font = [UIFont boldSystemFontOfSize:18];
    [phonerightView addSubview:phonerightLabel];
    
//    UIView *lineView5 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(phoneTextField.frame)+5, bgWidth, 1)];
//    lineView5.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
//    [bgView addSubview:lineView5];
    
    
    
    
    
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerButton.frame = CGRectMake(10, CGRectGetMaxY(bgView.frame)+15, kScreenWidth-40, 44);
    [registerButton setBackgroundColor:[UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000]];
    [registerButton setTitle:@"同意协议并注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    registerButton.layer.masksToBounds = YES;
    registerButton.layer.cornerRadius = 5;
    [scrollView addSubview:registerButton];
    
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(registerButton.frame)+15, kScreenWidth-40, 300)];
    contentView.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    [scrollView addSubview:contentView];
    contentView.layer.masksToBounds = YES;
    contentView.layer.cornerRadius = 5;
    contentView.layer.borderColor = [[UIColor colorWithWhite:0.702 alpha:1.000] CGColor];
    contentView.layer.borderWidth = 1.5;
    
    scrollView.contentSize = CGSizeMake(kScreenWidth - 40, CGRectGetMaxY(contentView.frame)+20);
    
    
    UILabel *contentLabel = [[UILabel alloc]init];
    
    contentLabel.text = @"1.注册用户可对社会不正之风，影响经济发展及社会生活中需要解决的热点、难点问题进行投诉、曝光或者建议。";
    contentLabel.numberOfLines = 0;
    contentLabel.font = [UIFont boldSystemFontOfSize:17];
    CGFloat maxWidth =bgWidth-10;
    CGSize maxSize = CGSizeMake(maxWidth, MAXFLOAT);
    CGSize textRealSize = [contentLabel.text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    contentLabel.frame = CGRectMake(5,5, bgWidth - 10, textRealSize.height);
    [contentView addSubview:contentLabel];

    
    UILabel *contentLabel1 = [[UILabel alloc]init];
    
    contentLabel1.text = @"2.用户需独立承担其发布内容的责任。用户对服务的使用必须遵守所有的适用于服务的地方法律、国家法律和国际法律，济南市民热线保留对用户账号及发表的文字，图片等媒体内容的停用或删除的权利。";
    contentLabel1.numberOfLines = 0;
    contentLabel1.font = [UIFont boldSystemFontOfSize:17];
    CGSize textRealSize1 = [contentLabel1.text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    contentLabel1.frame = CGRectMake(5,CGRectGetMaxY(contentLabel.frame)+5, bgWidth - 10, textRealSize1.height);
    [contentView addSubview:contentLabel1];
    
    
    UILabel *contentLabel2 = [[UILabel alloc]init];
    
    contentLabel2.text = @"3.济南市民热线承诺保障您的个人资料及隐私权益，您的联系电话严禁用于回复诉求信件时沟通使用。";
    contentLabel2.numberOfLines = 0;
    contentLabel2.font = [UIFont boldSystemFontOfSize:17];
    CGSize textRealSize2 = [contentLabel2.text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    contentLabel2.frame = CGRectMake(5,CGRectGetMaxY(contentLabel1.frame)+5, bgWidth - 10, textRealSize2.height);
    [contentView addSubview:contentLabel2];
    
    contentView.frame = CGRectMake(10, CGRectGetMaxY(registerButton.frame)+15, kScreenWidth-40, CGRectGetMaxY(contentLabel2.frame)+5);
    
}

#pragma mark - 取消键盘的第一响应

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    return [textField resignFirstResponder];
}





@end
