//
//  ViewController.m
//  testoc
//
//  Created by 何锡瓒 on 16/12/3.
//  Copyright © 2016年 Davis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *testButton1 = [[UIButton alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    testButton1.tag = 0;
    testButton1.backgroundColor=[UIColor grayColor];
    [testButton1 setTitle:@"testButton1" forState:UIControlStateNormal];
    [testButton1 addTarget:self action:@selector(testButtonBeTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton1];
    
    UIButton *testButton2 = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    testButton2.tag = 1;
    testButton2.backgroundColor=[UIColor grayColor];
    [testButton2 setTitle:@"testButton2" forState:UIControlStateNormal];
    [testButton2 addTarget:self action:@selector(testButtonBeTouched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton2];
   
    

    //调用
    NSLog(@"%@",NSLocalizedString(@"alertOk", nil));
    
    NSLog(@"w:%f,h:%f",[[UIScreen mainScreen]bounds].size.width,
          [[UIScreen mainScreen]bounds].size.height);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)testButtonBeTouched:(UIButton *)sender
{
    if (sender.tag == 0 )
    {
        NSLog(@"testButton1");
       [self alertWithTitle:@"testButton1"];
       return;
    }
    if (sender.tag == 1 )
    {
         NSLog(@"testButton2");
        [self alertWithTitle:@"testButton2"];
        return;
    }
}

- (void)alertWithTitle:(NSString *)title
{
    //初始化提示框；
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"按钮被点击了" preferredStyle:  UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //点击按钮的响应事件；
    }]];
    
    //弹出提示框；
    [self presentViewController:alert animated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
