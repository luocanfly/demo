//
//  seViewController.m
//  demo
//
//  Created by Dee on 15/5/30.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "seViewController.h"

@interface seViewController ()

@end

@implementation seViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
