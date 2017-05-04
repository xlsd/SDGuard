# Guard
This tool is design for Objective-C, a category for NSObject to guard dealloc method, add block, when system call the dealloc, call this block first.通过分类的形式给OC对象添加一个block，在对象销毁执行dealloc方法时，执行这个block。具有较小的侵入性

```
    //  用法如下
    UIViewController *rootVc = self.navigationController.topViewController;
    [rootVc guard_addDeallocBlock:^{
        NSLog(@"登录成功了!");
    }];
    
```
    
> 可以使用 pod 'Guard'
或者将.h .m文件引入工程
