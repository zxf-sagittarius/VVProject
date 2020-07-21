//
//  VVUtils.m
//  VVUtils
//
//  Created by zxfei on 2020/7/16.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "VVUtils.h"

#import <VVStaticFramework/VVStatic.h>


@implementation VVUtils

- (void)test {
    NSLog(@"打印%s",__func__);
    VVStatic *st = [[VVStatic alloc] init];
    [st test];
}

@end
