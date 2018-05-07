//
//  ViewController.m
//  YTransitionDemo
//
//  Created by BruceYao on 16/6/21.
//  Copyright © 2016年 BruceYao. All rights reserved.
//

#import "ViewController.h"
#import "YNextViewController.h"

@interface ViewController ()<UIViewControllerAnimatedTransitioning>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)presentButton:(UIButton *)sender {
    YNextViewController *vc = [[YNextViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (IBAction)pushButton:(UIButton *)sender {
    YNextViewController *vc = [[YNextViewController alloc] init];
    vc.view.backgroundColor = [UIColor orangeColor];
    self.navigationController.delegate = vc;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - UIViewControllerAnimatedTransitioning
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 1.0f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
}
@end
