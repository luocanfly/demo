//
//  ViewController.m
//  demo
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "deeTransition.h"
#import "seViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor =[UIColor purpleColor];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    seViewController *second =[[seViewController alloc]init];
    
    second.modalPresentationStyle =UIModalPresentationCustom;
    
    second.transitioningDelegate =[deeTransition sharedtransition];
    
    [self presentViewController:second animated:YES completion:nil];
    
    
}

@end
