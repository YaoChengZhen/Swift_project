//
//  YTranitionTypes.h
//  YTransitionDemo
//
//  Created by BruceYao on 16/6/28.
//  Copyright © 2016年 BruceYao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YTransitiaonNavType) {
    YNaviTransitionTypeDefaultPush = 0,
    YNaviTransitionTypeDefaultPop,
    YTransitionTypeDefaultPrestent,
    YTranitionTypeDefaultDismiss,
    YPageCoverTransitionTypePush,
    YPageCoverTransitionTypePop,
    YPresentOneTransitionTypePresent,
    YPresentOneTransitionTypeDismiss,
    YCircleSpreadTransitionTypePresent,
    YCircleSpreadTransitionTypeDismiss
};
@interface YTranitionTypes : NSObject <UIViewControllerAnimatedTransitioning>

//转场动画时间
@property (nonatomic, assign) CGFloat transitionTime;

//转场控制器
@property (nonatomic, weak, readonly) UIViewController *toVC;
//来自
@property (nonatomic, weak, readonly) UIViewController *fromVC;

/**
 *  初始化动画过渡代理
 */
+ (instancetype)transitionWithType:(YTransitiaonNavType)type;
- (instancetype)initWithTransitionType:(YTransitiaonNavType)type;
@end
