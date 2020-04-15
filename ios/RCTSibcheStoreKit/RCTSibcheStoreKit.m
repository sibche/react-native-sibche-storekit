#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTConvert.h>
#import <React/RCTBridge.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTUtils.h>
#else
#import "RCTConvert.h"
#import "RCTBridge.h"
#import "RCTEventDispatcher.h"
#import "RCTUtils.h"
#endif

#import "RCTSibcheStoreKit.h"

@interface RCTSibcheStoreKit ()
@end

@implementation RCTSibcheStoreKit

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init:(NSString*)appId withScheme:(NSString*)appScheme)
{
    [SibcheStoreKit initWithApiKey:appId withScheme:appScheme withStore:@"SDK-REACT-NATIVE"];
}

RCT_EXPORT_METHOD(fetchInAppPurchasePackages:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit fetchInAppPurchasePackages:^(BOOL isSuccessful, SibcheError *error, NSArray *packagesArray) {
        NSMutableArray* modifiedArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < packagesArray.count; i++) {
            modifiedArray[i] = [packagesArray[i] toDictionary];
        }
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, modifiedArray]);
    }];
}

RCT_EXPORT_METHOD(fetchInAppPurchasePackage:(NSString*)packageId withCallback:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit fetchInAppPurchasePackage:packageId withPackagesCallback:^(BOOL isSuccessful, SibcheError *error, SibchePackage *package) {
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, package ? [package toDictionary] : @{}]);
    }];
}

RCT_EXPORT_METHOD(fetchActiveInAppPurchasePackages:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit fetchActiveInAppPurchasePackages:^(BOOL isSuccessful, SibcheError *error, NSArray *purchasePackagesArray) {
        NSMutableArray* modifiedArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < purchasePackagesArray.count; i++) {
            modifiedArray[i] = [purchasePackagesArray[i] toDictionary];
        }
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, modifiedArray]);
    }];
}

RCT_EXPORT_METHOD(loginUser:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit loginUser:^(BOOL isSuccessful, SibcheError *error, NSString *userName, NSString *userId) {
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, userName ? userName : @"", userId ? userId : @""]);
    }];
}

RCT_EXPORT_METHOD(logoutUser:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit logoutUser:^{
        callback(@[]);
    }];
}

RCT_EXPORT_METHOD(purchasePackage:(NSString*)packageId withCallback:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit purchasePackage:packageId withCallback:^(BOOL isSuccessful, SibcheError *error, SibchePurchasePackage *purchasePackage) {
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, purchasePackage ? [purchasePackage toDictionary] : @{}]);
    }];
}

RCT_EXPORT_METHOD(openUrl:(NSString*)url withCallback:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit openUrl:[NSURL URLWithString:url] options:nil];
}

RCT_EXPORT_METHOD(consumePurchasePackage:(NSString*)purchasePackageId withCallback:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit consumePurchasePackage:purchasePackageId withCallback:^(BOOL isSuccessful, SibcheError *error) {
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}]);
    }];
}

RCT_EXPORT_METHOD(getCurrentUserData:(RCTResponseSenderBlock)callback)
{
    [SibcheStoreKit getCurrentUserData:^(BOOL isSuccessful, SibcheError *error, LoginStatusType loginStatus, NSString *userCellphoneNumber, NSString *userId) {
        callback(@[[NSNumber numberWithBool:isSuccessful], error ? [error toDictionary] : @{}, [NSNumber numberWithInt:loginStatus], userCellphoneNumber ? userCellphoneNumber : @"", userId ? userId : @""]);
    }];
}

@end
