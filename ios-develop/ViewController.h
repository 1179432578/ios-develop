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
    UIViewController *vc;
}

//@property UITextField *password_text;

//触摸密码框出现键盘
- (IBAction) touchDownPwdTxtField;

- (IBAction) changeView;


@end

