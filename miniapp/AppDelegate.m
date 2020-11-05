//
//  AppDelegate.m
//  miniapp
//
//  Created by 陈小聪 on 2020/11/5.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [AlitaNative registerWithAppId:@"cba9dd7a896748fd99c4b6b4dc35b80e"];
        
    return YES;
}


#pragma mark - UISceneSession lifecycle





@end
