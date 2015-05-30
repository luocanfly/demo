//
//  deeTransition.m
//  自定义UIpresentationController
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "deeTransition.h"
#import "DeePresentationController.h"
#import "DeeAnimationtransition.h"


@implementation deeTransition
SingletonM(transition)

-(UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    
    
    return [[DeePresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
    
}
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    
    DeeAnimationtransition *anima =[[DeeAnimationtransition alloc]init];
    anima.presented =YES;
    return  anima;
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    
    DeeAnimationtransition *anima =[[DeeAnimationtransition alloc]init];
    anima.presented = NO;
    return  anima;
}





@end
