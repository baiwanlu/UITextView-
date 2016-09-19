//
//  CMInputView.h
//  UITextView输入时高度自适应
//
//  Created by 道标朱 on 16/9/18.
//  Copyright © 2016年 道标朱. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CM_textHeightChangedBlock)(NSString *text,CGFloat textHeight);

@interface CMInputView : UITextView
//占位文字
@property (nonatomic, strong) NSString *placeholder;

//占位文字颜色
@property (nonatomic, strong) UIColor *placeholderColor;

//占位字体大小
@property (nonatomic, strong) UIFont *placeholderFont;

//textView最大行数
@property(nonatomic,assign) NSInteger maxNumberOfLines;

/**
 * 文字高度改变block -> 文字高度改变会自动调用
 * block参数（text） -> 文字内容
 * block 参数（textHeight） -> 文字高度
 */

@property (nonatomic, strong) CM_textHeightChangedBlock textChangedBlock;

//设置圆角

@property(nonatomic,assign) NSInteger cornerRadius;

- (void)textValueDidChanged:(CM_textHeightChangedBlock)block;

@end
