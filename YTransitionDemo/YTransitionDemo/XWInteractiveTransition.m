//
//  XWInteractiveTransition.m
//  YTransitionDemo
//
//  Created by BruceYao on 16/6/21.
//  Copyright © 2016年 BruceYao. All rights reserved.
//

#import "XWInteractiveTransition.h"
@interface XWInteractiveTransition ()
@property (nonatomic, assign) XWPresentOneTransitionType type;
@end
@implementation XWInteractiveTransition

+ (instancetype)transitionWithTransitionType:(XWPresentOneTransitionType)type{
    return [[self alloc] initWithTransitionType:type];
}

- (instancetype)initWithTransitionType:(XWPresentOneTransitionType)type{
    self = [super init];
    if (self) {
        _type = type;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.5f;
}
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    switch (_type) {
        case XWPresentOneTransitionTypePresent:
            [self presentAnimation:transitionContext];
            break;
        case XWPresentOneTransitionTypeDismiss:
            [self dismissAnimation:transitionContext];
            break;
        default:
            break;
    }
}

//实现present动画逻辑代码
- (void)presentAnimation:(id<UIViewControllerContextTransitioning>)transitionContext{
}
//实现dismiss动画逻辑代码
- (void)dismissAnimation:(id<UIViewControllerContextTransitioning>)transitionContext{
    
}
@end
