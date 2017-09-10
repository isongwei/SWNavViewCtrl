//
//  SWAppDelegate.m
//  SWNavViewCtrl
//
//  Created by imsongwei@163.com on 09/10/2017.
//  Copyright (c) 2017 imsongwei@163.com. All rights reserved.
//

#import "SWAppDelegate.h"

#import "SWViewCtrl2.h"
#import "SWViewController.h"
//#import "SWNavigationController.h"

@implementation SWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    UITabBarController * tab = [[UITabBarController alloc]init];
    
    
    SWViewController * vc = [[SWViewController alloc]init];
    vc.title = @"1";
    UINavigationController  * nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    
    SWViewCtrl2 * vc2 = [[SWViewCtrl2 alloc]init];
    vc2.title = @"2";
    UINavigationController  * nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    tab.viewControllers = @[nav,nav2];
    _window.rootViewController = tab;
    [_window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
