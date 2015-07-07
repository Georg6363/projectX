//
//  AppDelegate.m
//  Month array
//
//  Created by Georg on 07.07.15.
//  Copyright (c) 2015 Georg. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "Month.h"

@interface AppDelegate () <UISplitViewControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    navigationController.topViewController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem;
    splitViewController.delegate = self;
    Month* month1 = [[Month alloc] init];
    Month* month2 = [[Month alloc] init];
    Month* month3 = [[Month alloc] init];
    Month* month4 = [[Month alloc] init];
    Month* month5 = [[Month alloc] init];
    Month* month6 = [[Month alloc] init];
    Month* month7 = [[Month alloc] init];
    Month* month8 = [[Month alloc] init];
    Month* month9 = [[Month alloc] init];
    Month* month10 = [[Month alloc] init];
    Month* month11 = [[Month alloc] init];
    Month* month12 = [[Month alloc] init];
    
    month1.name = @"December";
    month2.name = @"Januar";
    month3.name = @"February";
    month4.name = @"March";
    month5.name = @"April";
    month6.name = @"May";
    month7.name = @"June";
    month8.name = @"July";
    month9.name = @"August";
    month10.name = @"September";
    month11.name = @"October";
    month12.name = @"November";
    
    NSArray* array = @[month1,month2,month3,month4,month5,month6,month7,month8,month9,month10,month11,month12];
    
    for (int i = 0; i < 12; i++) {
        NSLog(@"%@\n", [array[i] name]);
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Split view

- (BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController {
    if ([secondaryViewController isKindOfClass:[UINavigationController class]] && [[(UINavigationController *)secondaryViewController topViewController] isKindOfClass:[DetailViewController class]] && ([(DetailViewController *)[(UINavigationController *)secondaryViewController topViewController] detailItem] == nil)) {
        // Return YES to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return YES;
    } else {
        return NO;
    }
}

@end
