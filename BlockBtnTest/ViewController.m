//
//  ViewController.m
//  BlockBtnTest
//
//  Created by 王鹏 on 7/2/15.
//  Copyright (c) 2015 王鹏. All rights reserved.
//

#import "ViewController.h"
#import "blockButton.h"
#import "ButtonDelegate.h"
#import "ButtonBlockTest.h"

@interface ViewController ()<buttonClickedDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    blockButton *blockBtn = [[blockButton alloc] initWithFrame:CGRectMake(20, 40, 100, 20)];
    blockBtn.backgroundColor = [UIColor blueColor];
    [blockBtn setTitle:@"按钮" forState:UIControlStateNormal];
    blockBtn.block = ^(blockButton *btn) {
        NSLog(@"the button has been tapped");
    };
    [self.view addSubview:blockBtn];
    ButtonDelegate *buttonDelegate = [[ButtonDelegate alloc] initWithFrame:CGRectMake(20, 80, 100, 20)];
    buttonDelegate.backgroundColor = [UIColor redColor];
    [buttonDelegate setTitle:@"代理方法按钮" forState:UIControlStateNormal];
    buttonDelegate.delegate = self;
    [self.view addSubview:buttonDelegate];
    ButtonBlockTest *buttonBlock = [[ButtonBlockTest alloc] initWithFrame:CGRectMake(20, 120, 100, 20)];
    [buttonBlock setTitle:@"块按钮" forState:UIControlStateNormal];
    buttonBlock.backgroundColor = [UIColor orangeColor];
    buttonBlock.block = ^(ButtonBlockTest *btn){
        NSLog(@"块 按钮 点击了");
    };
    [self.view addSubview:buttonBlock];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickedButtonWithDelegateMethod {
    NSLog(@"the delegate button method clicked");
}

@end
