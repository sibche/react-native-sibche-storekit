//
//  SibchePurchasePackage.h
//  SibcheStoreKit
//
//  Created by Mehdi on 4/13/19.
//  Copyright © 2019 Sibche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SibchePackage.h"

NS_ASSUME_NONNULL_BEGIN

@interface SibchePurchasePackage : NSObject

- (NSString*)purchasePackageId;
- (NSString*)type;
- (NSString*)code;
- (NSDate*)expireAt;
- (NSDate*)createdAt;
- (SibchePackage*)package;

- (instancetype)initWithData:(NSDictionary *)data withPackage:(NSDictionary*)package;
- (NSString*) toJson;

+ (NSArray*)parsePurchasePackagesList:(NSDictionary*)data;

@end

NS_ASSUME_NONNULL_END
