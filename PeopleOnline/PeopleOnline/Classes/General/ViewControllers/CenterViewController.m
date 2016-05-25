//
//  CenterViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "CenterViewController.h"

@interface CenterViewController ()

@end

@implementation CenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"topbar.9"] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.475 green:0.718 blue:1.000 alpha:1.000];
    
//    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"title_more"] style:UIBarButtonItemStylePlain target:self action:@selector(leftDrawerButtonPress:)];
    
//    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] init];
    
    
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 , 30);
    [btu setBackgroundImage:[UIImage imageNamed:@"title_more"] forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(leftDrawerButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    //    btu.backgroundColor=[UIColor redColor];
    MMDrawerBarButtonItem *back = [[MMDrawerBarButtonItem alloc]initWithCustomView:btu];
//    self.navigationItem.leftBarButtonItem=back;
    
    
     [self.navigationItem setLeftBarButtonItem:back animated:YES];
    
    
    
    
    
    //添加视图
    [self addAllViews];
    
    
    
}

#pragma mark - 添加视图

-(void)addAllViews{
    
    HomeViewController *homeVC = [HomeViewController new];
    UINavigationController *homeNC = [[UINavigationController alloc]initWithRootViewController:homeVC];
    
    
    MyViewController *myVC = [MyViewController new];
    UINavigationController *myNC = [[UINavigationController alloc]initWithRootViewController:myVC];
    
    CitysViewController *citysVC = [CitysViewController new];
    UINavigationController *citysNC = [[UINavigationController alloc]initWithRootViewController:citysVC];
    
    
    BGTViewController *bgtVC = [BGTViewController new];
    UINavigationController *bgtNC = [[UINavigationController alloc]initWithRootViewController:bgtVC];
    
    ServiceViewController *serviceVC = [ServiceViewController new];
    UINavigationController *serviceNC = [[UINavigationController alloc]initWithRootViewController:serviceVC];
    
    NSArray *array = @[homeNC,myNC,citysNC,bgtNC,serviceNC];
    
    
    
    
}



////抽屉按钮动作
//-(void)leftDrawerButtonPress:(id)sender
//{
//    //开关左抽屉
//    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
//}




@end
