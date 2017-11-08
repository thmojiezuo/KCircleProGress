//
//  ViewController.m
//  CircleProgress
//
//  Created by tenghu on 2017/11/8.
//  Copyright © 2017年 tenghu. All rights reserved.
//

#import "ViewController.h"
#import "KCircleView.h"
#import "UIColor+Extension.h"
#import "KCircleProgressView.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define RGB(r,g,b)[UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1]

@interface ViewController ()
{
    KCircleView *_circleT;
    KCircleView *_circleM;
    KCircleView *_circleB;
    
    
    KCircleProgressView *_progressOne;
    
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    _circleT = [[KCircleView alloc] initWithFrame:CGRectMake(0, 50, 150, 150) lineColor:RGB(113, 146, 56)];
    _circleT.center = CGPointMake(SCREEN_WIDTH/2, 135+50);
    _circleT.progress = 0.8;
    [self.view addSubview:_circleT];
    
    _circleM = [[KCircleView alloc] initWithFrame:CGRectMake(0, 50, 100, 100) lineColor:RGB(54, 113, 141)];
    _circleM.center = CGPointMake(SCREEN_WIDTH/2, 135+50);
    _circleM.progress = 0.5;
    [self.view addSubview:_circleM];
    
    _circleB = [[KCircleView alloc] initWithFrame:CGRectMake(0, 50, 50, 50) lineColor:RGB(190, 104, 39)];
    _circleB.center = CGPointMake(SCREEN_WIDTH/2, 135+50);
    _circleB.progress = 0.6;
    [self.view addSubview:_circleB];
    
    
    _progressOne = [[KCircleProgressView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2-40,280, 80, 80)];
    _progressOne.progressColor = [UIColor colorWithHexString:@"b4cd5f"];
    _progressOne.progressStrokeWidth = 5.f;
    _progressOne.progressTrackColor = RGB(46, 36, 23);
    _progressOne.progressValue = 0.6;
    [self.view  addSubview:_progressOne];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
