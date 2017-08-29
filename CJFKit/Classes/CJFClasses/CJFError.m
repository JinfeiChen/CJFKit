//
//  JFError.m
//  CJFKit
//
//  Created by cjf on 2017/5/17.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import "CJFError.h"

static NSDictionary *errorDictionary = nil;

@implementation CJFError

+ (void)initialize {
    
    if (self == [CJFError class]) {
        
        errorDictionary = @{
                            /* code : errorWithDomain */
                            /* ==================================== */
                            
                            @(CJFErrorCodeUnknow) : @"未知错误",
                            
                            @(CJFErrorCodeTest)   : @"测试错误"
                            
                            /* ==================================== */
                            };
    }
}

+ (NSError *)errorWithCode:(CJFErrorCode)errorCode errorInfo:(NSDictionary *)errorInfo {
    return [[NSError alloc] initWithDomain:errorDictionary[@(errorCode)] code:errorCode userInfo:errorInfo];
}

+ (NSString *)descriptionWithErrorCode:(CJFErrorCode)errorCode {
    return errorDictionary[@(errorCode)];
}

@end
