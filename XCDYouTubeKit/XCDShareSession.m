//
//  XCDShareSession.m
//  Pods
//
//  Created by xzming on 2019/11/25.
//

#import "XCDShareSession.h"

@interface XCDShareSession ()
@end

@implementation XCDShareSession

+ (instancetype)shareInst {
    static dispatch_once_t onceToken;
    static XCDShareSession *inst = nil;
    dispatch_once(&onceToken, ^{
        inst = [XCDShareSession new];
    });
    return inst;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        //[NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"fetch.config"];
        _sessionMan = [[AFURLSessionManager alloc] initWithSessionConfiguration:config];
        _sessionMan.completionQueue = dispatch_queue_create("download.bg.queue", nil);
        _sessionMan.securityPolicy.allowInvalidCertificates = YES;
        _sessionMan.securityPolicy.validatesDomainName = NO;
        _sessionMan.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}

@end
