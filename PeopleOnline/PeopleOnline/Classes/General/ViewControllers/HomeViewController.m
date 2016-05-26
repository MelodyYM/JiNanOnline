//
//  HomeViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewCell.h"
#import "HomeThreeViewCell.h"
#import "HomeNotifierCell.h"
@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,weak)UITableView *tableView;

@end

@implementation HomeViewController
static NSString *identifier = @"identifier";
static NSString *identifierThree = @"identifier1";
static NSString *identifiernotifier = @"identifier2";
- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    self.view.backgroundColor = [UIColor whiteColor];

    
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"topbar.9"] forBarMetrics:UIBarMetricsDefault];
    
        self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.475 green:0.718 blue:1.000 alpha:1.000];
    
    //    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"title_more"] style:UIBarButtonItemStylePlain target:self action:@selector(leftDrawerButtonPress:)];
    
    //    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] init];
    
    
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 , 30);
    [btu setBackgroundImage:[UIImage imageNamed:@"title_more"] forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(leftDrawerButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    MMDrawerBarButtonItem *back = [[MMDrawerBarButtonItem alloc]initWithCustomView:btu];
<<<<<<< HEAD
=======
//    self.navigationItem.leftBarButtonItem=back;

>>>>>>> b2867bfe034248d9149980fe0f1a4403f5ea26cb
    [self.navigationItem setLeftBarButtonItem:back animated:YES];
    
    
    [self initTableView];
    
    [self.tableView registerClass:[HomeViewCell class] forCellReuseIdentifier:identifier];
    [self.tableView registerClass:[HomeThreeViewCell class] forCellReuseIdentifier:identifierThree];
    [self.tableView registerClass:[HomeNotifierCell class] forCellReuseIdentifier:identifiernotifier];
}



//抽屉按钮动作
-(void)leftDrawerButtonPress:(id)sender
{
    //开关左抽屉
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
    
//    [NSNotificationCenter de]
    
    
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
    return 3;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
    
    if (indexPath.row == 0) {
        cell =[tableView dequeueReusableCellWithIdentifier:identifier];
        
    }else if (indexPath.row == 1){
        cell =[tableView dequeueReusableCellWithIdentifier:identifiernotifier];
       
       
    }else{
    cell =[tableView dequeueReusableCellWithIdentifier:identifierThree];
       
    }
    //cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
   
    
}
// 设置cell的高度
- (CGFloat)tableView:(UITableView *)atableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return (kScreenHeight - 49-64)/3;
    
}
// 实现cell的跳转事件
-  (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row ==0) {
        
    }else if (indexPath.row ==1){
        
    }else{
        
    }
    
}









@end
