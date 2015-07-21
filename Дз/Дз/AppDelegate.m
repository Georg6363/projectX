//
//  AppDelegate.m
//  Дз
//
//  Created by George Fed on 20.07.15.
//  Copyright (c) 2015 George Fed. All rights reserved.
//

#import "AppDelegate.h"
#import "LerningClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    LerningClass* pupil1 = [[LerningClass alloc] init];
    LerningClass* pupil2 = [[LerningClass alloc] init];
    LerningClass* pupil3 = [[LerningClass alloc] init];
    LerningClass* pupil4 = [[LerningClass alloc] init];
    LerningClass* pupil5 = [[LerningClass alloc] init];
    LerningClass* pupil6 = [[LerningClass alloc] init];
    LerningClass* pupil7 = [[LerningClass alloc] init];
    
    pupil1.name = @"Peter";
    pupil2.name = @"Alfred";
    pupil3.name = @"Andrew";
    pupil4.name = @"Harry";
    pupil5.name = @"Edward";
    pupil6.name = @"Ann";
    pupil7.name = @"Mary";
    
    pupil1.gender = @"M";
    pupil2.gender = @"M";
    pupil3.gender = @"M";
    pupil4.gender = @"M";
    pupil5.gender = @"M";
    pupil6.gender = @"F";
    pupil7.gender = @"F";


    NSArray* array = @[pupil1, pupil2, pupil3, pupil4, pupil5, pupil6, pupil7];
    
    for (LerningClass* object in array) {
        object.mark = arc4random() % 30 + 21;
        object.mark = object.mark / 10 + (int)object.mark % 10 / 10;
    }
    NSLog(@"%lu", (unsigned long)[array count]);
    
    float maxMark = 1;
    for (LerningClass* obj in array) {
        NSLog(@"%@, gender - %@, grade - %.1f", obj.name, obj.gender, obj.mark);
        
        if (obj.mark > maxMark) {
            maxMark = obj.mark;
        }
        
    }
    NSLog(@"%.1f", maxMark);
    
    for (LerningClass* element in array) {
        if (element.mark == maxMark) {
            NSLog(@"%@", element.name);
        }
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

@end
