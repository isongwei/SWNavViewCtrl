#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "SWNavigationController.h"
#import "UIViewController+SWNavigationExtension.h"

FOUNDATION_EXPORT double SWNavViewCtrlVersionNumber;
FOUNDATION_EXPORT const unsigned char SWNavViewCtrlVersionString[];

