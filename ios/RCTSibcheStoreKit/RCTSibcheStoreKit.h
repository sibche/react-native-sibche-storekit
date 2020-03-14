#if __has_include(<SibcheStoreKit/SibcheStoreKit.h>)
#import <SibcheStoreKit/SibcheStoreKit.h>
#else
#import "../SibcheStoreKit.h"
#endif

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RCTSibcheStoreKit : NSObject <RCTBridgeModule>

@end
