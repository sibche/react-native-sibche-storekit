//
//  SibcheError.h
//  SibcheStoreKit
//
//  Created by Mehdi on 4/13/19.
//  Copyright © 2019 Sibche. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum SibcheErrorType : int {
    unknownError = 1000,
    alreadyHaveThisPackageError = 1001,
    operationCanceledError = 1002,
    loginFailedError = 1003,
    applicationNotInitedCorrectly = 1004,
} SibcheErrorType;

@interface SibcheError : NSObject

@property NSNumber* errorCode;
@property NSString* message;
@property NSNumber* statusCode;

- (instancetype)initWithData:(NSString*)jsonStr withHttpStatusCode:(NSInteger)httpStatusCode;
- (instancetype)initWithErrorCode:(SibcheErrorType)errorCode;
- (NSString*)toJson;
- (NSDictionary*)toDictionary;

@end

NS_ASSUME_NONNULL_END
