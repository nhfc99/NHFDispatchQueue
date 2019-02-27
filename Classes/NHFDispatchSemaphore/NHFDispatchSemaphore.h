//
//  NHFDispatchSemaphore.h
//  AFNetworking
//
//  Created by 牛宏飞 on 2019/2/27.
//

#import <Foundation/Foundation.h>

typedef void(^NHFDispatchSemaphoreResult)(void);

NS_ASSUME_NONNULL_BEGIN

@interface NHFDispatchSemaphore : NSObject

@property (nonatomic, assign) float timeout;

/**
 添加业务
 
 @param request --
 */
- (void)addOperation:(void(^)(NHFDispatchSemaphoreResult dispatchSemaphoreResult))request;


/**
 开始作业
 */
- (void)beginOperationTask;


/**
 取消所有的任务
 */
- (void)cancelAllOperations;

@end

NS_ASSUME_NONNULL_END

////队列操作
//kPropertyRetain NHFDispatchSemaphore *dispatchSemaphore;
//_dispatchSemaphore = [NHFDispatchSemaphore new];
//_dispatchSemaphore.
//[_dispatchSemaphore beginOperationTask];
//
//#pragma mark - 将操作加入队列中进行刷新数据
//- (void)addReload {
//    kWeakSelf(self);
//    [_dispatchSemaphore addOperation:^(NHFDispatchSemaphoreResult  _Nonnull dispatchSemaphoreResult) {
//        [weakself reloadList:^{
//            dispatchSemaphoreResult();
//        }];
//    }];
//}
//
//- (void)reloadList:(void(^)(void))request {
//    dispatch_time_t time=dispatch_time(DISPATCH_TIME_NOW, 1 *NSEC_PER_SEC);
//    dispatch_after(time, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        //执行操作
//        request();
//    });
//}
