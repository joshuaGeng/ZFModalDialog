//
//  ZFModalDialog.h
//  ZFModalDialog
//
//  Created by 耿中飞 on 15/6/15.
//  Copyright (c) 2015年 Joshua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ZFModalDialog : NSObject
/**
 *  模态视图
 *
 *  @param view  显示的view
 *  @param alpha 背景的alpha值
 */
+(void)showView:(UIView *)view andAlpha:(CGFloat) alpha;

+(void)hideView;

@end
