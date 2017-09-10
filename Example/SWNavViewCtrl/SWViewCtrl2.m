//
//  SWViewCtrl2.m
//  SWNavViewCtrl
//
//  Created by 张松伟 on 2017/9/10.
//  Copyright © 2017年 imsongwei@163.com. All rights reserved.
//

#import "SWViewCtrl2.h"
#import "SWViewController.h"

@interface SWViewCtrl2 ()

@end

@implementation SWViewCtrl2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    [self.navigationController pushViewController:[[SWViewController alloc]init] animated:YES];
    
}

@end
