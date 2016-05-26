//
//  ServiceViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "ServiceViewController.h"
#import "bigViewCell.h"
#import "ListViewCell.h"
#import "JuJiaoViewController.h"
@interface ServiceViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ServiceViewController
static NSString *identifierBig = @"identifier";
static NSString *identifierList = @"identifier1";


- (void)viewDidLoad {
    [super viewDidLoad];
 self.title = @"每日聚焦";
    
    
    self.view.backgroundColor = [UIColor brownColor];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.475 green:0.718 blue:1.000 alpha:1.000];
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 , 30);
    [btu setBackgroundImage:[UIImage imageNamed:@"title_more"] forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(leftDrawerButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    //    btu.backgroundColor=[UIColor redColor];
    MMDrawerBarButtonItem *back = [[MMDrawerBarButtonItem alloc]initWithCustomView:btu];
    //    self.navigationItem.leftBarButtonItem=back;
    
    [self.navigationItem setLeftBarButtonItem:back animated:YES];
    [self initTableView];
    [self.tableView registerClass:[bigViewCell class] forCellReuseIdentifier:identifierBig];
    [self.tableView registerClass:[ListViewCell class] forCellReuseIdentifier:identifierList];


}

//抽屉按钮动作
-(void)leftDrawerButtonPress:(id)sender
{
    //开关左抽屉
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

// 添加tablView
-(void)initTableView{
    
    UITableView* tableView =[[UITableView alloc]initWithFrame: CGRectMake(0, 0, kScreenWidth, kScreenHeight-49) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor orangeColor];
    tableView.bounces = NO;
    // 设置tableView的代理
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    _tableView = tableView;
    
}


// 实现tableView的代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
    
    if (indexPath.row == 0) {
        cell =[tableView dequeueReusableCellWithIdentifier:identifierBig];
        
    }else{
        cell =[tableView dequeueReusableCellWithIdentifier:identifierList];
        
    }
    //cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
    
}
// 设置cell的高度
- (CGFloat)tableView:(UITableView *)atableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        return 150;
    }else{
        return 100;
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    JuJiaoViewController *juJiaoVC =[JuJiaoViewController new];
        [self.navigationController pushViewController:juJiaoVC animated:YES];
        self.tabBarController.tabBar.hidden = YES;
        
   
}


@end
