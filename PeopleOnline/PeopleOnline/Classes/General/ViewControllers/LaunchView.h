//
//  LaunchView.h
//  PeopleOnline
//
//  Created by yangming on 16/5/24.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LaunchView : UIView

//声明一个属性
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageControl;

@property(nonatomic,weak)UIButton *loginButton;

/**
 *  设置点击的监听器
 *
 *  @param target 监听器
 *  @param action 监听方法
 */
-(void)addTarget:(id)target action:(SEL)action;


@end
