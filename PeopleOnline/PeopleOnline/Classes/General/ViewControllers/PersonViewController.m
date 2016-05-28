//
//  PersonViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/27.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "PersonViewController.h"
#import "PersonTableViewCell.h"

@interface PersonViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;

@end

@implementation PersonViewController


#pragma mark - 加载视图

static NSString *cellID = @"cellID";

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

    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
//    _tableView.backgroundColor = [UIColor orangeColor];
    _tableView.delegate =self;
    _tableView.dataSource = self;
    _tableView.bounces = NO;
    [self.view addSubview:_tableView];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"PersonTableViewCell" bundle:nil] forCellReuseIdentifier:cellID];
    
    

}

#pragma mark - 返回按钮事件

-(void)perLeftBarButtonItemAction:(UINavigationItem *)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}

#pragma mark - 组数

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return 1;
}

#pragma mark - 行数

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 4;
}

#pragma mark - 设置

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

#pragma mark - 设置cell

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    if (indexPath.row == 0) {
        cell.numberLabel.hidden = YES;
    }
    return cell;
    
}

#pragma mark - 点击cell事件

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PersonInfoViewController *perInfoVC = [PersonInfoViewController new];
    [self.navigationController pushViewController:perInfoVC animated:YES];
    
    
}




@end
