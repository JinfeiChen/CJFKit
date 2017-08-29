//
//  CJFTouchID.m
//  CJFKit
//
//  Created by cjf on 2017/7/18.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import "CJFTouchID.h"

#import <LocalAuthentication/LocalAuthentication.h>

@implementation CJFTouchID

+ (void)startAuthenWithMessage:(NSString *)message successfull:(void (^)())successfulBlock failure:(void (^)(NSError *))failureBlock {
    
    LAContext *context = [[LAContext alloc] init];
    NSError *error = nil;
    NSString *reason = message ? : @"Authen Warning!";
    
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        
        [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:reason reply:^(BOOL success, NSError * _Nullable error) {
            
            if (success) {
                
                if (successfulBlock) {
                    
                    successfulBlock();
                }
            }
            else {
                
                if (failureBlock) {
                    
                    failureBlock(error);
                }
            }
        }];
    }
    else {
        
        NSLog(@"Authen error : %@, %@", error, error.userInfo);
    }
}

@end
