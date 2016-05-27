//
//  LoginViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>

@property(nonatomic,strong)UITextField *userTextField;

@property(nonatomic,strong)UITextField *passWordTextField;

@property(nonatomic,strong)UIButton *registerButton;

@property(nonatomic,strong)UIButton *loginButton;

@end

@implementation LoginViewController


#pragma mark - 视图加载完成

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addAllViews];
    
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 ,30);
    [btu setBackgroundImage:[UIImage imageNamed:@"commentbtn"] forState:UIControlStateNormal];
    [btu setTitle:@"返回" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(loginLeftBarButtonItemAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithCustomView:btu];
    self.navigationItem.leftBarButtonItem=back;
    
    
}

#pragma mark - 返回按钮

-(void)loginLeftBarButtonItemAction:(UIBarButtonItem *)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


#pragma mark - 添加视图

-(void)addAllViews{
    
    self.title = @"登录";
    [self.navigationController.navigationBar setTitleTextAttributes:
  @{NSFontAttributeName:[UIFont systemFontOfSize:19],
    NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    
    _userTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, 90, kScreenWidth-40, 40)];
    _userTextField.delegate = self;
    _userTextField.backgroundColor = [UIColor whiteColor];
    _userTextField.layer.masksToBounds = YES;
    _userTextField.layer.cornerRadius = 10;
    _userTextField.layer.borderColor = [[UIColor colorWithWhite:0.800 alpha:1.000]CGColor];
    _userTextField.layer.borderWidth = 2.0;
    _userTextField.font = [UIFont boldSystemFontOfSize:17];
    _userTextField.placeholder = @"用户ID/用户名/手机号";
    [self.view addSubview:_userTextField];
    _userTextField.delegate = self;
    
    UIView *leftView = [[UIView alloc]init];
    leftView.width = 55;
    leftView.height = 40;
    _userTextField.leftView = leftView;
    _userTextField.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *userLabel = [[UILabel alloc]init];
    userLabel.width = 55;
    userLabel.height = 40;
    userLabel.text = @"账号:";
    userLabel.textAlignment = NSTextAlignmentCenter;
    userLabel.textColor = [UIColor colorWithWhite:0.400 alpha:1.000];
    userLabel.font = [UIFont boldSystemFontOfSize:17];
    [leftView addSubview:userLabel];
    
    _passWordTextField = [[UITextField alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(_userTextField.frame)+20, kScreenWidth - 40, 40)];
    _passWordTextField.placeholder = @"密码";
    _passWordTextField.backgroundColor = [UIColor whiteColor];
    _passWordTextField.layer.masksToBounds = YES;
    _passWordTextField.layer.cornerRadius = 10;
    _passWordTextField.layer.borderColor = [[UIColor colorWithWhite:0.800 alpha:1.000]CGColor];
    _passWordTextField.layer.borderWidth = 2.0;
    _passWordTextField.font = [UIFont boldSystemFontOfSize:17];
    [self.view addSubview:_passWordTextField];
    _passWordTextField.delegate = self;
    
    UIView *passLeftView = [[UIView alloc]init];
    passLeftView.width = 55;
    passLeftView.height = 40;
    _passWordTextField.leftView = passLeftView;
    _passWordTextField.leftViewMode = UITextFieldViewModeAlways;
    
    
    UILabel *passLabel = [[UILabel alloc]init];
    passLabel.width = 55;
    passLabel.height = 40;
    passLabel.text = @"密码:";
    passLabel.textAlignment = NSTextAlignmentCenter;
    passLabel.textColor = [UIColor colorWithWhite:0.400 alpha:1.000];
    passLabel.font = [UIFont boldSystemFontOfSize:17];
    [passLeftView addSubview:passLabel];
    
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _registerButton.frame = CGRectMake(20, CGRectGetMaxY(_passWordTextField.frame)+30, (kScreenWidth - 60)/2, 40);
    [_registerButton setTitle:@"注 册" forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor colorWithWhite:0.200 alpha:1.000] forState:UIControlStateNormal];
    _registerButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.cornerRadius = 5;
    _registerButton.layer.borderColor = [[UIColor colorWithWhite:0.400 alpha:1.000] CGColor];
    _registerButton.layer.borderWidth = 1.5;
    [self.view addSubview:_registerButton];
    [_registerButton addTarget:self action:@selector(registerButtonActin:) forControlEvents:UIControlEventTouchUpInside];
    
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.frame = CGRectMake(CGRectGetMaxX(_registerButton.frame)+20, CGRectGetMaxY(_passWordTextField.frame)+30, (kScreenWidth - 60)/2, 40);
    [_loginButton setTitle:@"登 录" forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _loginButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    _loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    _loginButton.layer.masksToBounds = YES;
    _loginButton.layer.cornerRadius = 5;
    [self.view addSubview:_loginButton];
    [_loginButton addTarget:self action:@selector(loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];

    
}

#pragma mark -注册按钮事件

-(void)registerButtonActin:(UIButton *)sender{
    
    RegisterViewController *registerVC = [RegisterViewController new];
    [self.navigationController pushViewController:registerVC animated:YES];
    
}

#pragma mark - 登录按钮事件

-(void)loginButtonAction:(UIButton *)sender{
    
    
    
}

#pragma mark - 取消键盘的第一响应

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    return [textField resignFirstResponder];
}














@end
