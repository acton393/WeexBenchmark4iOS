//
//  ViewController.m
//  WeexBenchmark
//
//  Created by zifan.zx on 2017/12/13.
//  Copyright © 2017年 zifan.zx. All rights reserved.
//

#import "ViewController.h"
#import "WeexViewController.h"
#import "ReactNativeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)WeexScrollerClick:(id)sender {
    WeexViewController * viewController = [WeexViewController new];
    viewController.renderURL = [[NSBundle mainBundle] URLForResource:@"bundlejs/weex_mall_scroller" withExtension:@"js"].absoluteString;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)WeexListClick:(id)sender {
    WeexViewController * viewController = [WeexViewController new];
    viewController.renderURL = [[NSBundle mainBundle] URLForResource:@"bundlejs/weex_mall_list" withExtension:@"js"].absoluteString;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)WeexRecycleListClick:(id)sender {
    WeexViewController * viewController = [WeexViewController new];
    viewController.renderURL = [[NSBundle mainBundle] URLForResource:@"bundlejs/weex_mall_recycler_list" withExtension:@"js"].absoluteString;
    [self.navigationController pushViewController:viewController animated:YES];
}
- (IBAction)reactNativeScrollerClick:(id)sender {
    ReactNativeViewController * viewController = [ReactNativeViewController new];
    viewController.renderURL = [[NSBundle mainBundle] URLForResource:@"bundlejs/reactNativeScroller" withExtension:@"js"].absoluteString;
    viewController.moduleName = @"AwesomeProject";
    [self.navigationController pushViewController:viewController animated:YES];
}
- (IBAction)reactNativeFlatList:(id)sender {
    ReactNativeViewController * viewController = [ReactNativeViewController new];
    viewController.renderURL = [[NSBundle mainBundle] URLForResource:@"bundlejs/reactNativeFatList" withExtension:@"js"].absoluteString;
    viewController.moduleName = @"AwesomeProject";
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
