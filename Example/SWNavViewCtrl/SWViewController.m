//
//  SWViewController.m
//  SWNavViewCtrl
//
//  Created by imsongwei@163.com on 09/10/2017.
//  Copyright (c) 2017 imsongwei@163.com. All rights reserved.
//

#import "SWViewController.h"
#import "SWViewCtrl3.h"

@interface SWViewController ()

@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor greenColor];
    self.title=@"1";

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self.navigationController pushViewController:[[SWViewCtrl3 alloc]init] animated:YES];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}

@end
