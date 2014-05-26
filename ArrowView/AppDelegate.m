//
//  AppDelegate.m
//  ArrowView
//
//  Created by linaicai on 14-5-26.
//  Copyright (c) 2014年 LINAICAI. All rights reserved.
//

#import "AppDelegate.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    self.view=[[ArrowView alloc]initWithFrame:CGRectMake(10, 100, 300, 80) style:ArrowView_Top];
    [self.view setBackgroundColor:[UIColor clearColor]];
    [self.window addSubview:self.view];
    
    self.view=[[ArrowView alloc]initWithFrame:CGRectMake(10, 200, 300, 80) style:ArrowView_Bottom];
    [self.view setBackgroundColor:[UIColor clearColor]];
    [self.window addSubview:self.view];
    
    self.view=[[ArrowView alloc]initWithFrame:CGRectMake(10, 300, 300, 80) style:ArrowView_Left];
    [self.view setBackgroundColor:[UIColor clearColor]];
    [self.window addSubview:self.view];
    
    self.view=[[ArrowView alloc]initWithFrame:CGRectMake(10, 400, 300, 80) style:ArrowView_Right];
    [self.view setBackgroundColor:[UIColor clearColor]];
    [self.view addUIButtonWithTitle:[NSArray arrayWithObjects:@"播放",@"下载",@"点赞",@"吐槽", nil]];
    [self.view setSelectBlock:^(UIButton *button){
        NSLog(@"tag=%ld",button.tag);
    }];
    [self.window addSubview:self.view];
    
   
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(10, 50, 80, 30)];
    [button setTitle:@"显示" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(show:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    
    button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(100, 50, 80, 30)];
    [button setTitle:@"隐藏" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(hid:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    return YES;
}
-(IBAction)show:(id)sender
{
    
    [self.view showArrowView:YES];
}
-(IBAction)hid:(id)sender
{
   
    [self.view hidArrowView:YES];
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
