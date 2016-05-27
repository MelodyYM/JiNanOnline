//
//  ListViewCell.h
//  PeopleOnline
//
//  Created by LN on 16/5/26.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewCell : UITableViewCell
@property(nonatomic,strong)UIImageView *imgView;

@property(nonatomic,strong)UILabel *titlelabel;

@property(nonatomic,strong)UILabel *detailsLabel;

@property(nonatomic,strong)UILabel *commentLabel;


@end
