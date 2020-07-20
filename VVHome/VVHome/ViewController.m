//
//  ViewController.m
//  VVHome
//
//  Created by zxfei on 2020/7/16.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "ViewController.h"
#import <VVUtils/VVUtils.h>
#import <VVDynamic/VVDynamic.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VVUtils *utils = [[VVUtils alloc] init];
    [utils test];
    
    VVDynamic *dynamic = [[VVDynamic alloc] init];
    [dynamic test];
    
}


@end
