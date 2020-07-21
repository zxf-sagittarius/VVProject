//
//  VVHomeLib.m
//  VVHomeLib
//
//  Created by zxfei on 2020/7/16.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "VVHomeLib.h"
//#import <VVUtils/VVUtils.h>
//#import <VVDynamic/VVDynamic.h>
#import <VVStaticFramework/VVStatic.h>

@implementation VVHomeLib

- (void)test {
    NSLog(@"%s",__func__);
    
//    VVDynamic *dy = [[VVDynamic alloc] init];
//    [dy test];
    
    VVStatic *s = [[VVStatic alloc] init];
    [s test];
    
}

@end
