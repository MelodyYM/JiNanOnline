//
//  PersonInfoViewController.m
//  PeopleOnline
//
//  Created by yangming on 16/5/27.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "PersonInfoViewController.h"
#import "XiuGaiViewController.h"


@interface PersonInfoViewController ()
@property(nonatomic,strong)UITableView *infotableView;

@end

@implementation PersonInfoViewController

#pragma mark - 视图加载完成

static NSString *infoCell = @"info";

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
    self.title = @"个人信息";
    UIButton *btu =[UIButton buttonWithType:UIButtonTypeCustom];
    btu.frame = CGRectMake(20 ,6 ,50 ,30);
    [btu setBackgroundImage:[UIImage imageNamed:@"commentbtn"] forState:UIControlStateNormal];
    [btu setTitle:@"返回" forState:UIControlStateNormal];
    [btu addTarget:self action:@selector(perLeftBarButtonItemAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithCustomView:btu];
    self.navigationItem.leftBarButtonItem=back;
    
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(10, 80, kScreenWidth-20, 176)];
    bgView.backgroundColor = [UIColor whiteColor];
    bgView.layer.masksToBounds = YES;
    bgView.layer.cornerRadius = 5;
    bgView.layer.borderColor = [[UIColor colorWithWhite:0.800 alpha:1.000] CGColor];
    bgView.layer.borderWidth = 1.5;
    [self.view addSubview:bgView];

    
    UIButton *userButton = [UIButton buttonWithType:UIButtonTypeCustom];
    userButton.frame = CGRectMake(0, 0, kScreenWidth -20, 44);
    [bgView addSubview:userButton];
    
    UILabel *userLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 75, 34)];
    userLabel.text = @"用户ID:";
    userLabel.font = [UIFont boldSystemFontOfSize:18];
    [userButton addSubview:userLabel];
    
    UILabel *userLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(userLabel.frame), 5, 150, 34)];
    userLabel1.text = @"2345678";
    userLabel1.font = [UIFont boldSystemFontOfSize:18];
    userLabel1.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [userButton addSubview:userLabel1];
    
    UIView *lineView1 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(userButton.frame), kScreenWidth - 20, 0.5)];
    lineView1.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    [bgView addSubview:lineView1];
    
    
    UIButton *userButton11 = [UIButton buttonWithType:UIButtonTypeCustom];
    userButton11.frame = CGRectMake(0, CGRectGetMaxY(lineView1.frame), kScreenWidth -20, 44);
    [bgView addSubview:userButton11];
    
    UILabel *userLabel11 = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 75, 34)];
    userLabel11.text = @"用户名:";
    userLabel11.font = [UIFont boldSystemFontOfSize:18];
    [userButton11 addSubview:userLabel11];
    
    UILabel *userLabel12 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(userLabel.frame), 5, 150, 34)];
    userLabel12.text = @"2345678";
    userLabel12.font = [UIFont boldSystemFontOfSize:18];
    userLabel12.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [userButton11 addSubview:userLabel12];
    
    UIView *lineView2 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(userButton11.frame), kScreenWidth - 20, 0.5)];
    lineView2.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    [bgView addSubview:lineView2];
    

    UIButton *nameButton = [UIButton buttonWithType:UIButtonTypeCustom];
    nameButton.frame = CGRectMake(0, CGRectGetMaxY(lineView2.frame), kScreenWidth -20, 44);
    [bgView addSubview:nameButton];
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 75, 34)];
    nameLabel.text = @"姓名:";
    nameLabel.font = [UIFont boldSystemFontOfSize:18];
    [nameButton addSubview:nameLabel];
    
    UILabel *nameLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(nameLabel.frame), 5, 150, 34)];
    nameLabel1.text = @"2345678";
    nameLabel1.font = [UIFont boldSystemFontOfSize:18];
    nameLabel1.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [nameButton addSubview:nameLabel1];
    
    UIView *lineView3 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(nameButton.frame), kScreenWidth - 20, 0.5)];
    lineView3.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    [bgView addSubview:lineView3];
    
    
    UIButton *phoneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    phoneButton.frame = CGRectMake(0, CGRectGetMaxY(lineView3.frame), kScreenWidth -20, 44);
    [bgView addSubview:phoneButton];
    
    UILabel *phoeLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 75, 34)];
    phoeLabel.text = @"手机ID:";
    phoeLabel.font = [UIFont boldSystemFontOfSize:18];
    [phoneButton addSubview:phoeLabel];
    
    UILabel *phoneLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(nameLabel.frame), 5, 150, 34)];
    phoneLabel1.text = @"2345678";
    phoneLabel1.font = [UIFont boldSystemFontOfSize:18];
    phoneLabel1.textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    [phoneButton addSubview:phoneLabel1];
    
    for (int i = 0; i<3; i++) {
        UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
        image.frame = CGRectMake(bgView.frame.size.width - 35, 19/2+(i+1)*44, 25, 25);
        [bgView addSubview:image];
    }
    
    
    
    UIButton *passButton = [UIButton buttonWithType:UIButtonTypeCustom];
    passButton.frame = CGRectMake(10, CGRectGetMaxY(bgView.frame)+15, kScreenWidth-20, 44);
    passButton.layer.cornerRadius = 5;
    passButton.layer.masksToBounds = YES;
    passButton.layer.borderWidth = 1.5;
    passButton.layer.borderColor = [[UIColor colorWithWhite:0.800 alpha:1.000]CGColor];
    [self.view addSubview:passButton];
    
    UILabel *passLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, 100, 34)];
    passLabel.text = @"修改密码:";
    passLabel.font =[UIFont boldSystemFontOfSize:18];
    [passButton addSubview:passLabel];
    
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mm_submenu_normal"]];
    image.frame = CGRectMake(bgView.frame.size.width - 35, 19/2, 25, 25);
    [passButton addSubview:image];
    
    
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
    cancelButton.frame = CGRectMake(10, CGRectGetMaxY(passButton.frame)+15, kScreenWidth-20, 44);
    [cancelButton setTitle:@"注 销" forState:UIControlStateNormal];
    cancelButton.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    cancelButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    [cancelButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    cancelButton.layer.masksToBounds = YES;
    cancelButton.layer.cornerRadius = 5;
    [self.view addSubview:cancelButton];
    [cancelButton addTarget:self action:@selector(cancelButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
}


-(void)perLeftBarButtonItemAction:(UIBarButtonItem *)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)cancelButtonAction:(UIButton *)sender{
    
    XiuGaiViewController *xiuGaiVC = [XiuGaiViewController new];
    
    [self.navigationController pushViewController:xiuGaiVC animated:YES];
    
}



@end
