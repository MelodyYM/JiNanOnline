//
//  LeftViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LeftViewController.h"
#import "LeftView.h"

@interface LeftViewController ()

@property(nonatomic,weak)LeftView *leftView;

@end

@implementation LeftViewController

#pragma mark - 加载视图

- (void)loadView{
    
    LeftView *leftView = [[LeftView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view = leftView;
    _leftView = leftView;
}

#pragma mark - 视图加载完成

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [_leftView.loginButton addTarget:self action:@selector(leftLoginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

/**
 *  登录按钮事件
 *
 *  @param sender 传入的UIButton
 */
-(void)leftLoginButtonAction:(UIButton *)sender{
    
    LoginViewController *loginVC = [LoginViewController new];
    UINavigationController *loginNC = [[UINavigationController alloc]initWithRootViewController:loginVC];
    //开关左抽屉
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self presentViewController:loginNC animated:YES completion:^{
        
    }];
    
}









@end
