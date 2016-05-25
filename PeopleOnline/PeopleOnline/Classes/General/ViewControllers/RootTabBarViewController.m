//
//  RootTabBarViewController.m
//  CBoss
//
//  Created by yangming on 16/1/16.
//  Copyright © 2016年 yangming. All rights reserved.
//

#import "RootTabBarViewController.h"


@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.298 alpha:1.000];
    
    HomeViewController *homeVC = [HomeViewController new];
    UINavigationController *homeNC = [[UINavigationController alloc]initWithRootViewController:homeVC];
    homeNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@""] tag:1];
    
    MyViewController *myVC = [MyViewController new];
    UINavigationController *myNC = [[UINavigationController alloc]initWithRootViewController:myVC];
     myNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我" image:[UIImage imageNamed:@""] tag:2];
    
    CitysViewController *citysVC = [CitysViewController new];
    UINavigationController *citysNC = [[UINavigationController alloc]initWithRootViewController:citysVC];
     citysNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"市民诉求" image:[UIImage imageNamed:@""] tag:3];
    
    BGTViewController *bgtVC = [BGTViewController new];
    UINavigationController *bgtNC = [[UINavigationController alloc]initWithRootViewController:bgtVC];
     bgtNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"曝光台" image:[UIImage imageNamed:@""] tag:4];
    
    
    
    ServiceViewController *serviceVC = [ServiceViewController new];
    UINavigationController *serviceNC = [[UINavigationController alloc]initWithRootViewController:serviceVC];
     serviceNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"便民服务" image:[UIImage imageNamed:@""] tag:5];
    
    NSArray *array = @[homeNC,myNC,citysNC,bgtNC,serviceNC];
    
    self.viewControllers=array;
    
    
    
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 49)];
    v.backgroundColor = [UIColor colorWithWhite:0.298 alpha:1.000];
    [self.tabBar insertSubview:v atIndex:0];
    
}




@end
