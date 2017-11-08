//
//  KCircleView.h
//  CircleProgress
//
//  Created by tenghu on 2017/11/8.
//  Copyright © 2017年 tenghu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KCircleView : UIView

-(instancetype)initWithFrame:(CGRect)frame lineColor:(UIColor *)color;

@property (assign,nonatomic) float progress;

@end
