//
//  ViewController.m
//  ios-develop
//
//  Created by 鲁飞 on 16/6/12.
//  Copyright © 2016年 鲁飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

//@synthesize password_text;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    CGRect rt = self.view.frame;
     NSLog(@"%f %f %f %f", rt.origin.x, rt.origin.y, rt.size.width, rt.size.height);
    [self.view setFrame:CGRectMake(0, 0, 640, 1136)];
    rt = self.view.frame;
    NSLog(@"%f %f %f %f", rt.origin.x, rt.origin.y, rt.size.width, rt.size.height);
    [self.view autoresizesSubviews];
    
    [password_text setFrame:CGRectMake(330, 330, 200, 100)];
    
    password_text.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) pressPwdTxt{
    [password_text becomeFirstResponder];
    NSLog(@"11112");
}

- (IBAction)finshiEditing{
    [password_text resignFirstResponder];
    NSLog(@"33333333311112");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [password_text resignFirstResponder];
    return NO;
}

@end
