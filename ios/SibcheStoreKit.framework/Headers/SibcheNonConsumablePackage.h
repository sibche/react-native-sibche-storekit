//
//  SibcheNonConsumablePackage.h
//  SibcheStoreKit
//
//  Created by Mehdi on 4/13/19.
//  Copyright © 2019 Sibche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SibchePackage.h"

NS_ASSUME_NONNULL_BEGIN

@interface SibcheNonConsumablePackage : SibchePackage

- (instancetype)initWithData:(NSDictionary*)data;
- (NSString *)toJson;
- (NSDictionary*)toDictionary;

@end

NS_ASSUME_NONNULL_END
