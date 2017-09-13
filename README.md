# SWNavViewCtrl
一个手势返回导航栏的封装

结构



```objective-c
--UITabbarViewCtrl
	|
	+-SWNavigationController       		bar 隐藏		
	|	|
	|	+--SWWrapViewCtrl				只有一个VC
	|		|
	|		+--SWWrapNavigationViewCtrl    真实的NAVC(单独分配)
	|			|
	|			+--SWViewCtrl				真实的VC
	|
	+-SWNavigationController          多次push
	|	|
	|	+--SWWrapViewCtrl
	|	|	|
	|	|	+--SWWrapNavigationViewCtrl
	|	|		|
	|	|		+--SWViewCtrl
	|	|
 	|	+--SWWrapViewCtrl
	|	|	|
	|	|	+--SWWrapNavigationViewCtrl
	|	|		|
	|	|		+--SWViewCtrl
  	|	|
  	|	+--SWWrapViewCtrl
	|	|	|
	|	|	+--SWWrapNavigationViewCtrl
	|	|		|
	|	|		+--SWViewCtrl
```

```objective-c
(lldb) po [[[UIWindow keyWindow] rootViewController] _printHierarchy]
<UITabBarController 0x7fe48b6058f0>
   | <SWNavigationController 0x7fe48b831600>
   |    | <SWWrapViewController 0x7fe48e00ca50>
   |    |    | <SWWrapNavigationController 0x7fe48b832000>
   |    |    |    | <SWViewController 0x7fe48b40f460>
   | <SWNavigationController 0x7fe48c01fc00>
   |    | <SWWrapViewController 0x7fe48b5040b0>
   |    |    | <SWWrapNavigationController 0x7fe48c040800>
   |    |    |    | <SWViewCtrl2 0x7fe48e00cf60>
   |    | <SWWrapViewController 0x7fe48e00d260>
   |    |    | <SWWrapNavigationController 0x7fe48b827a00>
   |    |    |    | <SWViewController 0x7fe48b609bf0>
   |    | <SWWrapViewController 0x7fe48b41a1b0>
   |    |    | <SWWrapNavigationController 0x7fe48b83dc00>
   |    |    |    | <SWViewCtrl3 0x7fe48b60a590>
```





![](http://oop93frdr.bkt.clouddn.com/2017-09-13-064223.jpg)



使用方法



(1)基本使用

```objective-c
    SWViewController * vc1 = [[SWViewController alloc]init];
    vc1.title = @"1";
    SWNavigationController  * nav1 = [[SWNavigationController alloc]initWithRootViewController:vc1];
    nav1.fullScreenPopGestureEnabled = YES;
    
    SWViewController2 * vc2 = [[SWViewController2 alloc]init];
    vc2.title = @"2";
    SWNavigationController  * nav2 = [[SWNavigationController alloc]initWithRootViewController:vc2];
    nav2.fullScreenPopGestureEnabled = YES;
    tab.viewControllers = @[nav1,nav2];
    _window.rootViewController = tab;
    [_window makeKeyAndVisible];
```

(2)跳转

```objective-c
[self.navigationController pushViewController:vc animated:YES];
```

```objective-c
NSUInteger n = self.SW_navigationController.viewControllers.count;
[self.SW_navigationController popToViewController:self.SW_navigationController.viewControllers[n-3] animated:YES];
```

(3)涉及中间添加的VC

```objective-c

//在视图出现后添加
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
  	//获取目前所有的VC
	NSMutableArray * vcArr = self.SW_navigationController.viewControllers.mutableCopy;
	//需要添加的VC
	SWViewController * vc1 = [[SWViewController alloc]init];
	//添加VC
	[vcArr insertObject:[SWWrapViewController wrapViewControllerWithViewController:vc] atIndex:1];
	self.SW_navigationController.viewControllers = vcArr;
  
}

```



