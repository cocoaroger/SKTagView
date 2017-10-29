//
//  AppDelegate.m
//  WrapViewWithAutolayout
//
//  Created by shiweifu on 12/9/14.
//  Copyright (c) 2014 shiweifu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MutiselectController.h"

@implementation AppDelegate

- (BOOL)application: (UIApplication *)application didFinishLaunchingWithOptions: (NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] init];
    _window.backgroundColor = [UIColor whiteColor];
    _window.rootViewController = [MutiselectController new];
    [_window makeKeyAndVisible];
    return YES;
}

@end
