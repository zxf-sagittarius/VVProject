//
//  ViewController.m
//  VVProject
//
//  Created by zxfei on 2020/7/15.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "ViewController.h"
#import <VVUtils/VVUtils.h>
#import <VVHomeLib/VVHomeLib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VVUtils *utils = [[VVUtils alloc] init];
    [utils test];
    
    VVHomeLib *homeLib = [[VVHomeLib alloc] init];
    [homeLib test];
    
//    VVDynamic *dynamic = [[VVDynamic alloc] init];
//    [dynamic test];
}


@end
