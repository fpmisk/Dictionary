//
//  Helper.h
//  AppleBasketMobile
//
//  Created by Admin on 19.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Helper : NSObject {
    NSMutableDictionary *dict;
}

@property (nonatomic, retain) NSMutableDictionary *dict;

+ (Helper*) instance;

@end