//
//  View1Controller.m
//  ios-develop
//
//  Created by lewis on 16/6/13.
//  Copyright © 2016年 鲁飞. All rights reserved.
//

#import "View1Controller.h"

@interface View1Controller ()

@end

@implementation View1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     NSLog(@"11111eerter");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)returnHomeView{
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
//    UIStoryboard *storyBoard;
//    UIViewController *vc;
//    //获得UITabBarController
//    storyBoard  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    vc = [storyBoard instantiateInitialViewController];
//    [window addSubview:vc.view];
    [window sendSubviewToBack:self.view];
    NSLog(@"11111111ffffeerter");
}

@end
