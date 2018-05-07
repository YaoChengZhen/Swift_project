//
//  YNextViewController.m
//  YTransitionDemo
//
//  Created by BruceYao on 16/6/28.
//  Copyright © 2016年 BruceYao. All rights reserved.
//

#import "YNextViewController.h"
#import "YTranitionTypes.h"
#import "Masonry/Masonry.h"

@interface YNextViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation YNextViewController

- (void)dealloc{
    NSLog(@"销毁了!!!!!");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.transitioningDelegate = self;
        self.modalPresentationStyle = UIModalPresentationCustom;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    __weak typeof(self)vc = self;
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(vc.view.mas_top).mas_offset(10);
        make.width.mas_equalTo(@100);
        make.height.mas_equalTo(@50);
        make.centerX.mas_equalTo(vc.view.mas_centerX);
        
    }];
    [btn setTitle:@"Dismiss" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIViewControllerTransitioningDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [YTranitionTypes transitionWithType:YPresentOneTransitionTypePresent];
    
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [YTranitionTypes transitionWithType:YPresentOneTransitionTypeDismiss];
    
}

#pragma mark - UINavigationControllerDelegate
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
//    _operation = operation;
    //分pop和push两种情况分别返回动画过渡代理相应不同的动画操作
    return [YTranitionTypes transitionWithType:operation == UINavigationControllerOperationPush ? YPageCoverTransitionTypePush : YPageCoverTransitionTypePop];
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
