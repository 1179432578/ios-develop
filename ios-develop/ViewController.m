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
    passwordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) touchDownPwdTxtField{
    [passwordTextField becomeFirstResponder];
    NSLog(@"11112");
}

//按键盘return完成密码输入
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [passwordTextField resignFirstResponder];
    return NO;
}

#pragma mark - 视图控制器的触摸事件
//UIViewController派生于UIResponder，实现触摸方法可以响应触摸
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"UIViewController start touch...");
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    //取得一个触摸对象（对于多点触摸可能有多个对象）
    UITouch *touch=[touches anyObject];
    //NSLog(@"%@",touch);
    
    //取得当前位置
    CGPoint current=[touch locationInView:self.view];
    //取得前一个位置
    CGPoint previous=[touch previousLocationInView:self.view];
    
    NSLog(@"UIViewController moving...");
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"UIViewController touch end.");
}


- (IBAction)changeView{
    UIStoryboard *storyBoard;
    storyBoard  = [UIStoryboard storyboardWithName:@"view1" bundle:nil];
    
    m_viewController = [storyBoard instantiateInitialViewController];
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    
    [window addSubview:m_viewController.view];
    [window bringSubviewToFront:m_viewController.view];
    
//    [vc becomeFirstResponder];
}

- (IBAction) testTabBarController{
    //创建故事版
    UIStoryboard * storyBoard  = [UIStoryboard storyboardWithName:@"tabbarview" bundle:nil];
    //实例化控制器
    m_tabController = [storyBoard instantiateViewControllerWithIdentifier:@"tabbar"];
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    
    //把tabbarcontroller的视图移到窗口最前面
    [window addSubview:m_tabController.view];
    [window bringSubviewToFront:m_tabController.view];
    
    NSLog(@"12134");
}

@end
