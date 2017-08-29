//
//  CJFTouchID.h
//  CJFKit - 指纹验证管理类
//
//  Created by cjf on 2017/7/18.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CJFTouchID : NSObject

/**
 CJF - 发起指纹验证

 @param message 验证提示信息
 @param successfulBlock 验证成功回调
 @param failureBlock 验证失败回调
 */
+ (void)startAuthenWithMessage: (NSString *)message successfull: (void (^)())successfulBlock failure: (void (^)(NSError *error))failureBlock;

@end

NS_ASSUME_NONNULL_END
