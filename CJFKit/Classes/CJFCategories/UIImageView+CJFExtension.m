//
//  UIImageView+CJFExtension.m
//  CJF
//
//  Created by cjf on 2017/5/11.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import "UIImageView+CJFExtension.h"

@implementation UIImageView (CJFExtension)

- (void)addBlurEffectWithStyle:(UIBlurEffectStyle)style {
    
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:style];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectView.frame = self.bounds;
    
    [self addSubview:effectView];
}

@end
