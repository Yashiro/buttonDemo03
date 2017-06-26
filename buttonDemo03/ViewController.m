//
//  ViewController.m
//  buttonDemo03
//
//  Created by Andy on 17/6/26.
//  Copyright (c) 2017年 Andy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 当要显示一个界面的时候，首先创建这个界面对应的控制器
// 控制器创建好以后，接着创建控制器所管理的view，当这个view加载完毕以后就开始执行下面的方法
// 当viewDidLoad方法开始执行，就表示控制器管理的view创建完毕
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 动态创建我们自己的按钮
    // 1. 创建按钮(UIButton)
//    UIButton *button = [[UIButton alloc] init];
    // 定义按钮类型
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    // 2. 设置按钮上显示的文字
    // 设置默认状态下的显示文字
    [button setTitle:@"点我吧" forState:UIControlStateNormal];
    // 设置高亮状态下的显示文字
    [button setTitle:@"摸我干啥" forState:UIControlStateHighlighted];
    
    // 3. 设置按钮背景图片
    // 加载图片
    UIImage *imgNormal = [UIImage imageNamed:@"btn_01"];
    UIImage *imgHighlighted = [UIImage imageNamed:@"btn_02"];
    
    // 设置不同状态下的文字颜色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    // 设置默认状态下的背景图片
    [button setBackgroundImage:imgNormal forState:UIControlStateNormal];
    // 设置高亮状态下的背景图片
    [button setBackgroundImage:imgHighlighted forState:UIControlStateHighlighted];
    
    // 4. 由代码实现控件，必须要设置控件的frame
    button.frame = CGRectMake(50, 100, 100, 100);
    
    // 5. 通过代码为按钮注册一个单击事件
    // 第一个参数是表示某个对象(当前控制器本身)
    // 第二个参数是表示的某个方法(自定义myButtonClick方法)来监听这个单击事件，
    // 第三个参数是表示单击事件类型
    // 这就是如何为动态创建的按钮注册单击事件
    [button addTarget:self action:@selector(myButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    // 6. 把动态创建的按钮加到控制器管理的view中
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)myButtonClick {
    
    NSLog(@"Click...!");
}

@end
