//
//  ViewController.h
//  ios-develop
//
//  Created by 鲁飞 on 16/6/12.
//  Copyright © 2016年 鲁飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UITextField *passwordTextField;
    
    UIViewController *m_viewController;
    UITabBarController *m_tabController;
}

//@property UITextField *password_text;

//触摸密码框出现键盘
- (IBAction) touchDownPwdTxtField;

- (IBAction) changeView;

//测试tar bar controller
- (IBAction) testTabBarController;


@end

