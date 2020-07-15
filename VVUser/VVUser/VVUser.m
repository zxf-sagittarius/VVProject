//
//  VVUser.m
//  VVUser
//
//  Created by zxfei on 2020/7/15.
//  Copyright © 2020 zxfei. All rights reserved.
//

#import "VVUser.h"

@implementation VVUser

- (instancetype)init {
    if (self = [super init]) {
        _userName = @"default";
    }
    return self;
}

+ (instancetype)share {
    static VVUser *_user = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _user = [[self alloc] init];
    });
    return _user;
}

@end
