//
//  ViewController.m
//  StackViewTest
//
//  Created by sunqi on 16/8/30.
//  Copyright © 2016年 sunqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStackView *stackView;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *ops;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1. 初始化隐藏表情
    for (UIButton *btn in self.ops) {
        btn.hidden = YES;
    }
}

#pragma mark 点击事件
- (IBAction)setClick {
    [UIView animateWithDuration:0.3 animations:^{
        for (UIButton *btn in self.ops) { 
            btn.hidden = !btn.hidden;
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
