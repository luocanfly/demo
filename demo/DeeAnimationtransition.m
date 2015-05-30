//
//  DeeAnimationtransition.m
//  自定义UIpresentationController
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeAnimationtransition.h"


const CGFloat duration =.20;

@implementation DeeAnimationtransition



#pragma mark - UIViewControllerAnimatedTransitioning

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    NSLog(@"------------------------");
    
    return duration
    ;//动画时间设置
    
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{

    if (self.presented) {
        
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        toView.frame = CGRectMake(0, -toView.frame.size.height, toView.frame.size.width, toView.frame.size.height);
        
        
        //在这里完成动画
        [UIView animateWithDuration:.25 animations:^{
            
            
            // UITransitionContextToViewKey,
            // UITransitionContextFromViewKey.
            toView.frame = CGRectMake(0, 0, toView.frame.size.width, toView.frame.size.height);
            
        }completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
        
    }else
    {
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        
        
        
        //在这里完成动画
        [UIView animateWithDuration:.25 animations:^{
            
            
            // UITransitionContextToViewKey,
            // UITransitionContextFromViewKey.
            fromView.frame = CGRectMake(0, fromView.frame.size.height , fromView.frame.size.width, fromView.frame.size.height);
            
        }completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
        
    }
 
    
/*
    if (self.presented) {
        
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        toView.layer.transform = CATransform3DMakeRotation( M_PI_2, 1, 1, 0);
        
        
        //在这里完成动画
        [UIView animateWithDuration:duration animations:^{
            
            
            toView.layer.transform = CATransform3DIdentity;
            
            
        }completion:^(BOOL finished) {
            
            [transitionContext completeTransition:YES];
            
        }];
        
    }else
    {
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        
        //在这里完成动画
        [UIView animateWithDuration:duration animations:^{
            
            fromView.layer.transform = CATransform3DMakeRotation( M_PI_2, 0, 1, 1);


            
        }completion:^(BOOL finished) {
            
            [transitionContext completeTransition:YES];
            
        }];
        
    }
 
 */
    
    
    
}




@end
