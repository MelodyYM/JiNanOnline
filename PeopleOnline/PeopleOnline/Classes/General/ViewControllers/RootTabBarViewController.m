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
}




@end
