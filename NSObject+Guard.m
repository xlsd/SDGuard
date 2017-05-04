//
//  NSObject+Guard.m
//  SDLayoutDemo
//
//  Created by 薛林 on 2017/5/2.
//  Copyright © 2017年 YunTianXia. All rights reserved.
//

#import "NSObject+Guard.h"
#import <objc/runtime.h>

@interface Parasite : NSObject
@property (nonatomic, copy) void(^deallocBlock)(void);
@end
@implementation Parasite
- (void)dealloc {
    if (self.deallocBlock) {
        self.deallocBlock();
    }
}
@end

@implementation NSObject (Guard)

- (void)guard_addDeallocBlock:(void(^)(void))block {
    @synchronized (self) {
        static NSString *kAssociatedKey = nil;
        NSMutableArray *parasiteList = objc_getAssociatedObject(self, &kAssociatedKey);
        if (!parasiteList) {
            parasiteList = [NSMutableArray new];
            objc_setAssociatedObject(self, &kAssociatedKey, parasiteList, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
        Parasite *parasite = [Parasite new];
        parasite.deallocBlock = block;
        [parasiteList addObject: parasite];
    }
}
@end
