//
//  SWViewCtrl3.m
//  SWNavViewCtrl
//
//  Created by iSongWei on 2017/9/13.
//  Copyright © 2017年 imsongwei@163.com. All rights reserved.
//

#import "SWViewCtrl3.h"

@interface SWViewCtrl3 ()

@end

@implementation SWViewCtrl3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    
    self.view.backgroundColor = [UIColor grayColor];
    self.title = @"3";
    
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}

@end
