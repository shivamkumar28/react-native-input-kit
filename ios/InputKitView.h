// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef InputKitViewNativeComponent_h
#define InputKitViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface InputKitView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* InputKitViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
