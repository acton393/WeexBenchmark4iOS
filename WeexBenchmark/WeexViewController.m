//
//  WeexViewController.m
//  WeexBenchmark
//
//  Created by zifan.zx on 2017/12/13.
//  Copyright © 2017年 zifan.zx. All rights reserved.
//

#import "WeexViewController.h"
#import <WeexSDK.h>

@interface WeexViewController ()
@property(nonatomic, strong)WXSDKInstance * weexSDKInstance;
@end

@implementation WeexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    if (self.renderURL) {
        self.weexSDKInstance = [WXSDKInstance new];
        __weak typeof(self) weakSelf = self;
        
        self.weexSDKInstance.frame = CGRectMake(self.view.frame.origin.x, CGRectGetMaxY(self.navigationController.navigationBar.frame), self.view.frame.size.width, self.view.frame.size.height-CGRectGetMaxY(self.navigationController.navigationBar.frame));
        self.weexSDKInstance.onCreate = ^(UIView *rootView) {
            [weakSelf.view addSubview:rootView];
        };
        [self.weexSDKInstance renderWithURL:[NSURL URLWithString:self.renderURL]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_weexSDKInstance destroyInstance];
    _weexSDKInstance = nil;
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
