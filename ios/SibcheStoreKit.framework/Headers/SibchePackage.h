//
//  SibchePackage.h
//  SibcheStoreKit
//
//  Created by Mehdi on 4/13/19.
//  Copyright © 2019 Sibche. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SibchePackage : NSObject

- (NSString*)packageId;
- (NSString*)type;
- (NSString*)code;
- (NSString*)name;
- (NSString*)packageDescription;
- (NSNumber*)price;
- (NSNumber*)totalPrice;
- (NSNumber*)discount;

- (NSString*)toJson;

- (instancetype)initWithData:(NSDictionary*)data;

@end

NS_ASSUME_NONNULL_END
