//
//  NSDictionary+CJFExtension.m
//  CJF
//
//  Created by cjf on 2017/5/9.
//  Copyright © 2017年 Jinfei Chen. All rights reserved.
//

#import "NSDictionary+CJFExtension.h"

@implementation NSDictionary (CJFExtension)

- (NSString *)toJsonString {
    
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    
    if ([jsonData length] && parseError == nil) {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    else{
        return nil;
    }
}

- (NSData *)toJsonData {
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    
    if ([jsonData length] && error == nil) {
        return jsonData;
    }
    else{
        return nil;
    }
}

@end
