//
//  XWInteractiveTransition.h
//  YTransitionDemo
//
//  Created by BruceYao on 16/6/21.
//  Copyright © 2016年 BruceYao. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef NS_ENUM(NSUInteger, XWInteractiveTransitionType) {//手势控制哪种转场
//    XWInteractiveTransitionTypePresent = 0,
//    XWInteractiveTransitionTypeDismiss,
//    XWInteractiveTransitionTypePush,
//    XWInteractiveTransitionTypePop,
//};

typedef NS_ENUM(NSUInteger, XWPresentOneTransitionType) {
    XWPresentOneTransitionTypePresent = 0,//管理present动画
    XWPresentOneTransitionTypeDismiss//管理dismiss动画
};

@interface XWInteractiveTransition : NSObject<UIViewControllerAnimatedTransitioning>

//根据定义的枚举初始化的两个方法
+ (instancetype)transitionWithTransitionType:(XWPresentOneTransitionType)type;
- (instancetype)initWithTransitionType:(XWPresentOneTransitionType)type;
@end
