//
//  MRVerticalButton.m
//  MR_BSBDJ
//
//  Created by Andrew554 on 16/7/10.
//  Copyright © 2016年 SinObjectC. All rights reserved.
//

#import "MRVerticalButton.h"

@implementation MRVerticalButton

/**
 *  代码创建
 */
- (instancetype)initWithFrame:(CGRect)frame {
    
    if(self = [super initWithFrame:frame]) {
    
        [self setUp];
        
    }
    
    return self;
}


/**
 *  xib创建回调方法
 */
- (void)awakeFromNib {
    
    [self setUp];
    
}


/**
 *  初始化设置
 */
- (void)setUp {

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
}


// 调整图片和文字的布局
- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    // 图片顶部对齐
    self.imageView.mr_x = 0;
    self.imageView.mr_y = 0;
    self.imageView.mr_height = self.imageView.mr_width;
    
    // 文字标题居于图片的下方
    self.titleLabel.mr_x = 0;
    self.titleLabel.mr_y = self.imageView.mr_height;
    self.titleLabel.mr_width = self.mr_width;
    self.titleLabel.mr_height = self.mr_height - self.imageView.mr_height;
    
}

@end
