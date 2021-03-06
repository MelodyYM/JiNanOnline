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
    homeNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"bottom1_2"] tag:1];
    
    MyViewController *myVC = [MyViewController new];
    UINavigationController *myNC = [[UINavigationController alloc]initWithRootViewController:myVC];
     myNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"bottom2_2"] tag:2];
    
    CitysViewController *citysVC = [CitysViewController new];
    UINavigationController *citysNC = [[UINavigationController alloc]initWithRootViewController:citysVC];
     citysNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"bottom3_2"] tag:3];
    
    BGTViewController *bgtVC = [BGTViewController new];
    UINavigationController *bgtNC = [[UINavigationController alloc]initWithRootViewController:bgtVC];
     bgtNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"bottom4_2"] tag:4];
    
    
    
    ServiceViewController *serviceVC = [ServiceViewController new];
    UINavigationController *serviceNC = [[UINavigationController alloc]initWithRootViewController:serviceVC];
     serviceNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"bottom6_2"] tag:5];
    
    NSArray *array = @[homeNC,myNC,citysNC,bgtNC,serviceNC];
    
    self.viewControllers=array;
    
    for (UITabBarItem *item in self.tabBar.items) {
        
        item.imageInsets = UIEdgeInsetsMake(0, 0, 0,0);
        
    }
    
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 49)];
    v.backgroundColor = [UIColor colorWithWhite:0.298 alpha:1.000];
    [self.tabBar insertSubview:v atIndex:0];
    
}




@end
