//
//  DeePresentationController.m
//  自定义UIpresentationController
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeePresentationController.h"

@implementation DeePresentationController

-(CGRect)frameOfPresentedViewInContainerView
{
    

//    return CGRectMake(0, 100, self.containerView.frame.size.width, self.containerView.frame.size.height-200);
    return CGRectInset(self.containerView.bounds, 10, 50);
    //设置内边距 [[ ]] 
}

- (void)presentationTransitionWillBegin
{
    //动画需要自定义，则所有添加过程都需要自己设置
    self.presentedView.frame  = self.containerView.bounds;
    [self.containerView addSubview:self.presentedView];
    
}

- (void)presentationTransitionDidEnd:(BOOL)completed
{
 
    NSLog(@"234");
    
    
}
- (void)dismissalTransitionWillBegin
{
    NSLog(@"345");
    
    
}
- (void)dismissalTransitionDidEnd:(BOOL)completed
{
   
    NSLog(@"456");
    [self.presentedView removeFromSuperview];
    
}


@end
