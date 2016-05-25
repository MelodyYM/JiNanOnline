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
    
    
}






@end
