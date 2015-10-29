//
//  Helper.m
//  AppleBasketMobile
//
//  Created by Admin on 20.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@implementation Helper

@synthesize dict;

#pragma mark Singleton Methods

+ (id)instance {
    static Helper *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}
- (id)init {
    if (self = [super init]) {
        dict = [[NSMutableDictionary alloc] init];
    }
    return self;
}
- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end