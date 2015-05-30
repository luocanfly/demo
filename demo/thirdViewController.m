//
//  thirdViewController.m
//  demo
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "thirdViewController.h"
#import "deeTransition.h"
@interface thirdViewController ()

@end

@implementation thirdViewController

//当一个对象从文件中创建就会调用

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self= [super initWithCoder:aDecoder]) {
        
        self.modalPresentationStyle = UIModalPresentationCustom;
        self.transitioningDelegate = [deeTransition sharedtransition];
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

@end
