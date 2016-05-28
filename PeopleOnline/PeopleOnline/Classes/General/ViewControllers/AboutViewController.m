//
//  AboutViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/27.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.title = @"个人中心";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 ,30);
    [btu setBackgroundImage:[UIImage imageNamed:@"commentbtn"] forState:UIControlStateNormal];
    [btu setTitle:@"返回" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(perLeftBarButtonItemAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithCustomView:btu];
    self.navigationItem.leftBarButtonItem=back;



}

#pragma mark - 返回按钮事件

-(void)perLeftBarButtonItemAction:(UINavigationItem *)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}



@end
