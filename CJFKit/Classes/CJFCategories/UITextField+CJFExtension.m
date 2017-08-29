//
//  UITextField+CJFExtension.m
//  CJF
//
//  Created by cjf on 2017/5/11.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import "UITextField+CJFExtension.h"

@implementation UITextField (CJFExtension)

- (void)setPlaceholderColor:(UIColor *)color {

    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.text attributes:@{NSForegroundColorAttributeName: color}];
}

@end
