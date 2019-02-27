//
//  NHFDispatchSemaphore.m
//  AFNetworking
//
//  Created by 牛宏飞 on 2019/2/27.
//

#import "NHFDispatchSemaphore.h"

@interface NHFDispatchSemaphore () {
    dispatch_semaphore_t _semaphore;
}
@end

@implementation NHFDispatchSemaphore

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timeout = DISPATCH_TIME_FOREVER;
        _semaphore = dispatch_semaphore_create(0);
    }
    return self;
}

- (void)addOperation:(void(^)(NHFDispatchSemaphoreResult dispatchSemaphoreResult))request {
    //开始执行业务
    dispatch_semaphore_wait(self->_semaphore, _timeout);
    
    //业务回调
    request(^{
        dispatch_semaphore_signal(self->_semaphore);
    });
}

- (void)beginOperationTask {
    dispatch_semaphore_signal(_semaphore);
}

- (void)cancelAllOperations {
    
}

@end
