//
//  NSObject+Guard.h
//  SDLayoutDemo
//
//  Created by 薛林 on 2017/5/2.
//  Copyright © 2017年 YunTianXia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Guard)
/**
 @brief 添加一个block,当该对象释放时被调用
 **/
- (void)guard_addDeallocBlock:(void(^)(void))block;

@end
