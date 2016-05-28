//
//  XiuGaiViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/28.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "XiuGaiViewController.h"

@interface XiuGaiViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *saveBuuton;



- (IBAction)saveButtonAction:(UIButton *)sender;


@end

@implementation XiuGaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];

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
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)saveButtonAction:(UIButton *)sender {
    
    NSLog(@"%s  %d",__func__,__LINE__);
    
    [self.view endEditing:YES];
    
}






@end
