//
//  RegisterViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "RegisterViewController.h"
#import "RegisterView.h"

@interface RegisterViewController ()

@property(nonatomic,strong)RegisterView *registerView;


@end

@implementation RegisterViewController

#pragma mark - 加载视图

- (void)loadView{
    
    self.registerView = [[RegisterView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.registerView;
}

#pragma mark - 视图加载完成

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"注 册";

}



@end
