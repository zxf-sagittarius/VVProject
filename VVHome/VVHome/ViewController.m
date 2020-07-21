//
//  ViewController.m
//  VVHome
//
//  Created by zxfei on 2020/7/16.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "ViewController.h"
#import <VVUtils/VVUtils.h>
//#import <VVDynamic/VVDynamic.h>
#import <SVProgressHUD.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VVUtils *utils = [[VVUtils alloc] init];
    [utils test];
    
//    VVDynamic *dynamic = [[VVDynamic alloc] init];
//    [dynamic test];
    NSString *name = [[[NSBundle mainBundle] pathForResource:@"VVStaticFramework" ofType:@"bundle"] stringByAppendingString:@"/zxfei.jpeg"];
    UIImage *image = [UIImage imageNamed:name];
    NSLog(@"_______%@",image);
    
}


@end
