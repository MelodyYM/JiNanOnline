//
//  LeftViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LeftViewController.h"
#import "LeftView.h"
#import "UpdateViewController.h"

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
    
    [_leftView.perButton addTarget:self action:@selector(leftPersonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [_leftView.jianyiButton addTarget:self action:@selector(leftJianyiAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [_leftView.upButton addTarget:self action:@selector(leftupiAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [_leftView.aboutButton addTarget:self action:@selector(leftAboutAction:) forControlEvents:UIControlEventTouchUpInside];
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
//    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self presentViewController:loginNC animated:YES completion:^{
        
    }];
    
}

#pragma mark - 个人中心

-(void)leftPersonAction:(UIButton *)sender{
    
    PersonViewController *personVC = [PersonViewController new];
    
    UINavigationController *perNC = [[UINavigationController alloc]initWithRootViewController:personVC];
    //开关左抽屉
//    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self presentViewController:perNC animated:YES completion:^{
        
    }];

    
    
}

#pragma mark - 更新

-(void)leftupiAction:(UIButton *)sender{
    
    UpdateViewController *upVC = [UpdateViewController new];
    UINavigationController *upNC = [[UINavigationController alloc]initWithRootViewController:upVC];
    [self presentViewController:upNC animated:YES completion:^{
        
    }];
    
    
}

#pragma mark - 建议

-(void)leftJianyiAction:(UIButton *)sender{
    
    JianYIViewController *jianYIVC = [JianYIViewController new];
    UINavigationController *jianYINC = [[UINavigationController alloc]initWithRootViewController:jianYIVC];
    [self presentViewController:jianYINC animated:YES completion:^{
        
    }];
}

#pragma mark - 关于

-(void)leftAboutAction:(UIButton *)sender{
    
    AboutViewController *aboutVC = [AboutViewController new];
    UINavigationController *aboutNC = [[UINavigationController alloc]initWithRootViewController:aboutVC];
    [self presentViewController:aboutNC animated:YES completion:^{
        
    }];
    
}




@end
