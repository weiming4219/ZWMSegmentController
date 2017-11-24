//
//  ViewController.m
//  ZWMSegmentController
//
//  Created by 伟明 on 2017/11/23.
//  Copyright © 2017年 伟明. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ZWMSegmentController.h"
#import "ThirdViewController.h"

@interface ViewController ()
@property (nonatomic, strong) ZWMSegmentController *segmentVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"滑动控制器";
    self.view.backgroundColor = [UIColor whiteColor];
    [self test];
    
}
- (void)test{
    self.navigationController.navigationBar.translucent = NO;
    
    FirstViewController *f = [[FirstViewController alloc] init];
    SecondViewController *s = [[SecondViewController alloc] init];
    FirstViewController *f1 = [[FirstViewController alloc] init];
    SecondViewController *s1 = [[SecondViewController alloc] init];
    FirstViewController *f2 = [[FirstViewController alloc] init];
    SecondViewController *s2 = [[SecondViewController alloc] init];
    FirstViewController *f3 = [[FirstViewController alloc] init];
    SecondViewController *s3 = [[SecondViewController alloc] init];
    FirstViewController *f4 = [[FirstViewController alloc] init];
    SecondViewController *s4 = [[SecondViewController alloc] init];
    FirstViewController *f5 = [[FirstViewController alloc] init];
    ThirdViewController *t = [[ThirdViewController alloc] init];
    NSArray *array = @[f,s,f1,s1,f2,s2,f3,s3,f4,s4,f5,t];
    
    self.segmentVC = [[ZWMSegmentController alloc] initWithFrame:self.view.bounds titles:@[@"热门",@"游戏直播",@"天天向上",@"战狼",@"Object-C",@"Swift",@"C/C++",@"python",@"React Native",@"Weex",@"Java",@"Top10"]];
    self.segmentVC.segmentView.showSeparateLine = YES;
    self.segmentVC.segmentView.segmentTintColor = [UIColor redColor];
    self.segmentVC.viewControllers = [array copy];
    if (array.count==1) {
        self.segmentVC.segmentView.style=ZWMSegmentStyleDefault;
    } else {
        self.segmentVC.segmentView.style=ZWMSegmentStyleFlush;
    }
    [self.segmentVC  enumerateBadges:@[@(1),@10]];
    [self addSegmentController:self.segmentVC];
    [self.segmentVC  setSelectedAtIndex:0];
}

@end
