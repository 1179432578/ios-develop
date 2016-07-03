//
//  MyTabBarViewController.m
//  ios-develop
//
//  Created by lewis on 16/6/16.
//  Copyright © 2016年 鲁飞. All rights reserved.
//

#import "MyTabBarViewController.h"

@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *img1 = [UIImage imageNamed:@"bitbug_favicon.png"];
    img1 = [img1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [[self.tabBar items] objectAtIndex:1].image = img1;
    [[self.tabBar items] objectAtIndex:0].image = img1;
    
    id items = [self.tabBar items];
    for (UITabBarItem *item in items) {
        item.image = img1;
        item.title = @"";
    }
//
    [[[self.tabBar items] objectAtIndex:1] initWithTitle:@"" image:img1 selectedImage:img1];
    
    //获得第一个视图控制器，添加控件 more code do little thing.
    id controllers = [self viewControllers];
    UIViewController *vc = [controllers objectAtIndex:0];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    label.text = @"hello world";
    [vc.view addSubview:label];

    NSLog(@"324");
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

@end
