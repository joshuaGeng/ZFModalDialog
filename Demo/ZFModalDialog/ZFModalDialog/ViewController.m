//
//  ViewController.m
//  ZFModalDialog
//
//  Created by 耿中飞 on 15/6/15.
//  Copyright (c) 2015年 Joshua. All rights reserved.
//

#import "ViewController.h"
#import "ZFModalDialog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 50 , 200, 30);
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"ModalDialog" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview: btn];
}

#pragma mark - 点击事件
- (void)btnClick:(UIButton *)btn
{
 
    // custom view
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 100, self.view.frame.size.width, 100)];
    customView.backgroundColor = [UIColor greenColor];
    
    [ZFModalDialog showView:customView andAlpha:0.3];
    
    // Manual hidden
//    [ZFModalDialog hideView];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
