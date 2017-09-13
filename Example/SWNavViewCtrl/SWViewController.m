//
//  SWViewController.m
//  SWNavViewCtrl
//
//  Created by imsongwei@163.com on 09/10/2017.
//  Copyright (c) 2017 imsongwei@163.com. All rights reserved.
//

#import "SWViewController.h"
#import "SWViewCtrl3.h"
#import "UIViewController+SWNavigationExtension.h"

@interface SWViewController ()<UITableViewDelegate>

@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    self.title=@"1";

}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    float n = scrollView.contentOffset.y/150.0;
    
    n < 0?n=0:n;
    n>1?n=1:n;
    
    self.navBarBgAlpha = 1-n;
//    self.navBarTintColor = [UIColor colorWithWhite:0 alpha:n];
    
    NSLog(@"%f",n);
    
    
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}

@end
