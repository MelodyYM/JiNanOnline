//
//  LaunchViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LaunchViewController.h"

@interface LaunchViewController ()<UIScrollViewDelegate>

@property(nonatomic,weak)LaunchView *launchView;


@end

@implementation LaunchViewController

#pragma mark - 加载视图

- (void)loadView{
    
    LaunchView *launchView = [[LaunchView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view = launchView;
    _launchView = launchView;

}

#pragma mark - 视图加载完成

- (void)viewDidLoad {
    [super viewDidLoad];


    //给小点绑定事件
    [self.launchView.pageControl addTarget:self action:@selector(pageControlAction:) forControlEvents:UIControlEventValueChanged];
    //设置滚动视图的代理
    self.launchView.scrollView.delegate=self;
    
    [_launchView addTarget:self action:@selector(loginButtonAction)];

}

-(void)loginButtonAction{
    
    NSLog(@"%s  %d",__func__,__LINE__);
    
    MainViewController *mainVC = [MainViewController new];
    [self presentViewController:mainVC animated:YES completion:^{
        
    }];
}

//当时图完全停止的事后执行（减速结果）
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //    NSLog(@"%d,%s",__LINE__,__FUNCTION__);
    
    //使用偏移量/scrollView的宽度，得到当前页数的下标
    NSInteger indxe=self.launchView.scrollView.contentOffset.x/self.launchView.scrollView.frame.size.width;
    //赋值给小点
    self.launchView.pageControl.currentPage=indxe;
    
}

-(void)pageControlAction:(UIPageControl *)sender{
    
    CGPoint offset=CGPointMake(self.launchView.scrollView.frame.size.width*sender.currentPage, 0);
    
    //    self.loginView.scrollView.contentOffset=offset;
    //将偏移量赋值给scrollView，并使用动画
    [self.launchView.scrollView setContentOffset:offset animated:YES];
    
}

#pragma mark - 设置状态栏的样式

- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}













@end
