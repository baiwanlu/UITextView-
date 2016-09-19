//
//  ViewController.m
//  UITextView输入时高度自适应
//
//  Created by 道标朱 on 16/9/18.
//  Copyright © 2016年 道标朱. All rights reserved.
//

#import "ViewController.h"
#import "CMInputView.h"
@interface ViewController ()
@property (nonatomic, strong) CMInputView *inputView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _inputView = [[CMInputView alloc]initWithFrame:CGRectMake(10, 100, 300, 40)];
    _inputView.font = [UIFont systemFontOfSize:18];
    _inputView.placeholder = @"测试文字";
    
    _inputView.cornerRadius = 4;
    _inputView.placeholderColor = [UIColor redColor];
    
    //设置文本框最大行数
    [_inputView textValueDidChanged:^(NSString *text, CGFloat textHeight) {
        CGRect frame = _inputView.frame;
        frame.size.height = textHeight;
        _inputView.frame = frame;
    }];
    _inputView.maxNumberOfLines = 4;
    [self.view addSubview:_inputView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
