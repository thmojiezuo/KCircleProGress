//
//  KCircleProgressView.m
//  CircleProgress
//
//  Created by tenghu on 2017/11/8.
//  Copyright © 2017年 tenghu. All rights reserved.
//

#import "KCircleProgressView.h"

@interface KCircleProgressView ()
{
    CAShapeLayer *backGroundLayer; //背景图层
    CAShapeLayer *frontFillLayer;      //用来填充的图层
    UIBezierPath *backGroundBezierPath; //背景贝赛尔曲线
    UIBezierPath *frontFillBezierPath;  //用来填充的贝赛尔曲线
}
@end

@implementation KCircleProgressView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setUp];
        
    }
    return self;
    
}

- (void)setUp
{
    
    
    //创建背景图层
    backGroundLayer = [CAShapeLayer layer];
    backGroundLayer.fillColor = nil;
    backGroundLayer.frame =  self.bounds;
    
    //创建填充图层
    frontFillLayer = [CAShapeLayer layer];
    frontFillLayer.fillColor = nil;
    frontFillLayer.lineCap = kCALineCapRound;
    frontFillLayer.frame = self.bounds;
    
    
    [self.layer addSublayer:backGroundLayer];
    [self.layer addSublayer:frontFillLayer];

}

- (void)setProgressColor:(UIColor *)progressColor
{
    _progressColor = progressColor;
    frontFillLayer.strokeColor = progressColor.CGColor;
}

- (void)setProgressTrackColor:(UIColor *)progressTrackColor
{
    _progressTrackColor = progressTrackColor;
    
    float centerX = self.bounds.size.width/2.0;
    float centerY = self.bounds.size.height/2.0;
    
    backGroundLayer.strokeColor = progressTrackColor.CGColor;
    backGroundBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(centerX, centerY) radius:(CGRectGetWidth(self.bounds)-_progressStrokeWidth)/2.f startAngle:0 endAngle:M_PI*2 clockwise:YES];
    backGroundLayer.path = backGroundBezierPath.CGPath;
}

- (void)setProgressValue:(CGFloat)progressValue
{
    _progressValue = progressValue;
    
    float centerX = self.bounds.size.width/2.0;
    float centerY = self.bounds.size.height/2.0;
    
    frontFillBezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(centerX, centerY) radius:(CGRectGetWidth(self.bounds)-_progressStrokeWidth)/2.f startAngle:-M_PI_2 endAngle:(2*M_PI)*progressValue-M_PI_2 clockwise:YES];
    frontFillLayer.path = frontFillBezierPath.CGPath;
}

- (void)setProgressStrokeWidth:(CGFloat)progressStrokeWidth
{
    _progressStrokeWidth = progressStrokeWidth;
    frontFillLayer.lineWidth = progressStrokeWidth;
    backGroundLayer.lineWidth = progressStrokeWidth;
}
-(void)dealloc{
    backGroundLayer = nil;
    frontFillLayer = nil;
    backGroundBezierPath = nil;
    frontFillBezierPath = nil;
}


@end
