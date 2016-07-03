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
    
    //use bundle
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"user" ofType:@"plist" inDirectory: @"file"];
    NSLog(@"bundlePath_1:%@", bundlePath);
//    NSLog(@"bundlePath:%@", [NSBundle mainBundle].bundlePath);
//    NSLog(@"resourcePath:%@", [NSBundle mainBundle].resourcePath);
//    NSLog(@"executablePath:%@", [NSBundle mainBundle].executablePath);
    
//    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:bundlePath];
//    NSString *pwd = [dict objectForKey:@"password"];
//    NSLog(@"password:%@", pwd);
    
    
    //use document to get writeable path
//    NSLog(@"1 %@", NSUserName());
//    NSLog(@"2 %@",NSFullUserName());
//    NSLog(@"3 %@",NSHomeDirectory());//exist
//    NSLog(@"4 %@",NSTemporaryDirectory());//exist
//    NSLog(@"5 %@",NSOpenStepRootDirectory());
    
//    NSLog(@"NSApplicationDirectory %@",NSSearchPathForDirectoriesInDomains(NSApplicationDirectory, NSUserDomainMask, false));
//     NSLog(@"NSDemoApplicationDirectory %@",NSSearchPathForDirectoriesInDomains(NSDemoApplicationDirectory, NSUserDomainMask, false));
//     NSLog(@"NSDeveloperApplicationDirectory %@",NSSearchPathForDirectoriesInDomains(NSDeveloperApplicationDirectory, NSUserDomainMask, false));
//     NSLog(@"NSAdminApplicationDirectory %@",NSSearchPathForDirectoriesInDomains(NSAdminApplicationDirectory, NSUserDomainMask, false));
//     NSLog(@"NSLibraryDirectory %@",NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, false));
//     NSLog(@"NSDeveloperDirectory %@",NSSearchPathForDirectoriesInDomains(NSDeveloperDirectory, NSUserDomainMask, false));
//     NSLog(@"NSUserDirectory %@",NSSearchPathForDirectoriesInDomains(NSUserDirectory, NSUserDomainMask, false));
//     NSLog(@"NSDocumentationDirectory %@",NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, false));
//     NSLog(@"NSDocumentDirectory %@",NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, false));
//     NSLog(@"NSCoreServiceDirectory %@",NSSearchPathForDirectoriesInDomains(NSCoreServiceDirectory, NSUserDomainMask, false));
//     NSLog(@"NSApplicationSupportDirectory %@",NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, false));
//     NSLog(@"NSCachesDirectory %@",NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, false));
//    NSLog(@"NSMoviesDirectory %@",NSSearchPathForDirectoriesInDomains(NSMoviesDirectory, NSUserDomainMask, false));
//
//    NSLog(@"NSPicturesDirectory %@",NSSearchPathForDirectoriesInDomains(NSPicturesDirectory, NSUserDomainMask, false));

    //get Documents Library(Caches Preferences) tmp
//    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) objectAtIndex:0];
//    NSLog(@"documentsPath :%@", documentsPath);
//    
//    NSString *libraryPath = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, true) objectAtIndex:0];
//    NSLog(@"libraryPath :%@", libraryPath);
//    
//    NSString *cachesPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, true) objectAtIndex:0];
//    NSLog(@"cachesPath :%@", cachesPath);
//    
//    NSString *preferencesPath = [NSSearchPathForDirectoriesInDomains(NSPreferencePanesDirectory, NSUserDomainMask, true) objectAtIndex:0];
//    NSLog(@"preferencesPath :%@", preferencesPath);
    
    //create dict and write to disk
//    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
//    [dict setObject:@"123456" forKey:@"password"];
//    NSString *tmpPath = NSTemporaryDirectory();
//    NSLog(@"preferencesPath :%@", tmpPath);
//    tmpPath = [tmpPath stringByAppendingString:@"data.plist"];
//    NSLog(@"write Path :%@", tmpPath);
//    [dict writeToFile:tmpPath atomically:false];
    
    //遍历打印文件夹下所有文件s
//    NSString *rootPath = NSHomeDirectory();
//    NSLog(@"rootPath: %@", rootPath);
//    NSDirectoryEnumerator *files = [[NSFileManager defaultManager]enumeratorAtPath:rootPath];
//    for (NSString * file in files) {
//        NSLog(@"path: %@", file);
//    }
    
    
    //给文件夹添加属性
    //设置目录不备份
//    NSURL *url = [[NSURL alloc] initFileURLWithPath:rootPath];
//    NSError *error;
//    BOOL success = [url setResourceValue: [NSNumber numberWithBool: YES]
//                                  forKey: NSURLIsExcludedFromBackupKey error: &error];
//    if(!success){
//        NSLog(@"Error excluding %@ from backup %@", [url lastPathComponent], error);
//    }
    
    
    
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
    
//    UITabBarController *tabbar = [[UITabBarController alloc] init];
//    [window addSubview:tabbar.view];
//    [window bringSubviewToFront:tabbar.view];
    
    NSLog(@"12134");
}

@end
