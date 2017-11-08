//
//  KCircleProgressView.h
//  CircleProgress
//
//  Created by tenghu on 2017/11/8.
//  Copyright © 2017年 tenghu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KCircleProgressView : UIView

@property (nonatomic,assign)CGFloat progressValue;

@property(nonatomic,assign) CGFloat progressStrokeWidth;

@property(nonatomic,strong)UIColor *progressColor;

@property(nonatomic,strong)UIColor *progressTrackColor;

@end
