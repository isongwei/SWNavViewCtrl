//
//  UIViewController+SWNavigationExtension.m
//  SWNavigationViewCtrl
//
//  Created by iSongWei on 2016/11/7.
//  Copyright © 2016年 iSong. All rights reserved.
//

#import "UIViewController+SWNavigationExtension.h"
#import <objc/runtime.h>



@implementation UIViewController (SWNavigationExtension)

//添加相应的属性

- (BOOL)SW_fullScreenPopGestureEnabled {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setSW_fullScreenPopGestureEnabled:(BOOL)fullScreenPopGestureEnabled {
    objc_setAssociatedObject(self, @selector(SW_fullScreenPopGestureEnabled), @(fullScreenPopGestureEnabled), OBJC_ASSOCIATION_RETAIN);
}



-(SWNavigationController *)SW_navigationController{
    return objc_getAssociatedObject(self, _cmd);
}

-(void)setSW_navigationController:(SWNavigationController *)SW_navigationController{
    objc_setAssociatedObject(self, @selector(SW_navigationController), SW_navigationController, OBJC_ASSOCIATION_ASSIGN);
}



//-(SWWrapNavigationController *)navigationController_real{
//    return objc_getAssociatedObject(self, _cmd);
//}
//
//-(void)setNavigationController_real:(SWWrapNavigationController *)navigationController_real{
//    
//        objc_setAssociatedObject(self, @selector(navigationController_real), navigationController_real, OBJC_ASSOCIATION_ASSIGN);
//}


-(CGFloat)navBarBgAlpha{
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
-(void)setNavBarBgAlpha:(CGFloat)navBarBgAlpha{
    objc_setAssociatedObject(self, @selector(navBarBgAlpha), @(navBarBgAlpha), OBJC_ASSOCIATION_RETAIN);
    if (self.navigationController) {
        self.navigationController.navigationBar.translucent = NO;
        [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
        
        //清除边框，设置一张空的图片
        [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
        
        self.navigationController.navigationBar.alpha = navBarBgAlpha;
    }
}


//-(UIColor *)navBarTintColor{
//    
//    return objc_getAssociatedObject(self, _cmd);
//    
//}
//
//-(void)setNavBarTintColor:(UIColor *)navBarTintColor{
//    
//    objc_setAssociatedObject(self, @selector(navBarTintColor), navBarTintColor, OBJC_ASSOCIATION_ASSIGN);
//    
//    if (self.navigationController) {
//        self.navigationController.navigationBar.translucent = NO;
//        //清除边框，设置一张空的图片
//        [self.navigationController.navigationBar setShadowImage:[[UIImage alloc]init]];
//        [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
//
//
//        
//        self.navigationController.navigationBar.barTintColor = navBarTintColor;
//    }
//    
//}


@end
