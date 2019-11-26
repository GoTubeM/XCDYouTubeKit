//
//  XCDShareSession.h
//  Pods
//
//  Created by xzming on 2019/11/25.
//

#import <Foundation/Foundation.h>
@import AFNetworking;
NS_ASSUME_NONNULL_BEGIN

@interface XCDShareSession : NSObject
@property (nonnull, readonly, nonatomic) AFURLSessionManager *sessionMan;

+ (instancetype)shareInst;

@end

NS_ASSUME_NONNULL_END
