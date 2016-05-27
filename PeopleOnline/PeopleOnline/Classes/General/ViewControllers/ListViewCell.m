//
//  ListViewCell.m
//  PeopleOnline
//
//  Created by LN on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "ListViewCell.h"

@implementation ListViewCell

#pragma mark - 初始化
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self allViews];
    }
    return self;
}

-(void)allViews{
    self.imgView =[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 100, 90)];
    self.imgView.backgroundColor =[UIColor redColor];
    [self.contentView addSubview:self.imgView];
    self.titlelabel = [[UILabel alloc]initWithFrame:CGRectMake(110, 10, kScreenWidth - 110, 25)];
    self.titlelabel.text =@"山东连续降雨结束气温回升";
    self.titlelabel.font =[UIFont boldSystemFontOfSize:18];
    [self.contentView addSubview:self.titlelabel];
    self.detailsLabel =[[UILabel alloc]initWithFrame:CGRectMake(110, 35, kScreenWidth - 110, 50)];
    self.detailsLabel.text =@"的幸福感和距离；幸福百花竞开立场上的幸福感 急哦";
    self.detailsLabel.font = [UIFont systemFontOfSize:13];
    self.detailsLabel.numberOfLines = 0;
    
    [self.contentView addSubview:self.detailsLabel];
    self.commentLabel =[[UILabel alloc]initWithFrame:CGRectMake(kScreenWidth -25, 70, 25, 20)];
    self.commentLabel.text =@"1评";
    self.commentLabel.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:self.commentLabel];
    

    
}

@end
