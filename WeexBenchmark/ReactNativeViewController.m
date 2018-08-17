//
//  ReactNativeViewController.m
//  WeexBenchmark
//
//  Created by zifan.zx on 2017/12/13.
//  Copyright © 2017年 zifan.zx. All rights reserved.
//

#import "ReactNativeViewController.h"
#import <React/RCTRootView.h>

@interface ReactNativeViewController ()

@end

@implementation ReactNativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.renderURL && self.moduleName) {
        NSURL *jsCodeLocation = [NSURL URLWithString:self.renderURL];
        
        RCTRootView *rootView =
        [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                    moduleName: self.moduleName
                             initialProperties:nil launchOptions: nil];
        self.view = rootView;
        self.view.frame = CGRectMake(self.view.frame.origin.x, CGRectGetMaxY(self.navigationController.navigationBar.frame), self.view.frame.size.width, self.view.frame.size.height-CGRectGetMaxY(self.navigationController.navigationBar.frame));
        
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
