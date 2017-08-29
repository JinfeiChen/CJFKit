//
//  CJFViewController.m
//  CJFKit
//
//  Created by jinfei_chen@icloud.com on 08/26/2017.
//  Copyright (c) 2017 jinfei_chen@icloud.com. All rights reserved.
//

#import "CJFViewController.h"

#import <CJFKit/CJFKit-umbrella.h>

@interface CJFViewController ()

@end

@implementation CJFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", [NSString getBundleId]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
