//
//  AppDelegate.m
//  Types
//
//  Created by Alexander Galkin on 14.07.15.
//  Copyright (c) 2015 iCoder. All rights reserved.
//

#import "AppDelegate.h"
#import "ClassTwo.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    CGPoint point;
//    
//    point.x = 10;
//    point.y = 20;
//    
//    CGSize size;
//    
//    size.width = 10;
//    size.height = 1;
//    
//    CGRect rect;
//    
//    NSLog(@"%f %f", point.x, point.y);
    
    
//    typedef enum {
//        male,
//        female
//    } gender;
//
//    int human1, human2;
//    
//    human1 = male;
//    human2 = female;
//    
//    NSLog(@"%d %d", male, female);
    
//    CGPoint point;
//    point.x = 5.5f;
//    point.y = 10;
//
//    point = CGPointMake(4, 5);
//    point = CGPointMake(5, 10);
//    
//    NSLog(@"%.1f %.0f", point.x, point.y);
//    
//    CGSize size;
//    size.width = 10;
//    size.height = 5;
//    
//    NSLog(@"%.0f %.0f", size.width, size.height);
//    
//    CGRect  rect;
//    rect.origin = point;
//    rect.size = size;
//    
//    rect = CGRectMake(0, 0, 5, 10);
//
//    NSLog(@"%.1f %.f %.f %.f", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    
    
    ClassTwo* object = [[ClassTwo alloc] init];
    object.name = @"Alex";
    
    ClassTwo* object2 = object;
    object2.name = @"Egor";
    
    NSLog(@"%@ %@", object.name, object2.name);
    
    NSInteger x = 2, y = x;
    y = 4;
    
    NSNumber* intX = [NSNumber numberWithInteger:x];
    NSNumber* intY = [NSNumber numberWithInteger:y];
    NSArray* array = [[NSArray alloc] initWithObjects:intX,intY, nil];
    
    for (NSNumber* obj in array) {
        NSLog(@"%ld", (long)[obj integerValue]);
    }
    
    CGPoint point1 = CGPointMake(3, 4);
    CGPoint point2 = CGPointMake(2, 6);
    CGPoint point3 = CGPointMake(1, 1);
    CGPoint point4 = CGPointMake(5, 9);
    CGPoint point5 = CGPointMake(5, 8);
   
    NSArray* arrayStruct = [[NSArray alloc] initWithObjects:[NSValue valueWithCGPoint:point1],
                                                            [NSValue valueWithCGPoint:point2],
                                                            [NSValue valueWithCGPoint:point3],
                                                            [NSValue valueWithCGPoint:point4],
                                                            [NSValue valueWithCGPoint:point5], nil];

    for (NSValue* obj in arrayStruct) {
        //NSLog(@"point = %@", NSStringFromCGPoint([obj CGPointValue]));
        CGPoint p = [obj CGPointValue];
        NSLog(@"%.f %.f", p.x, p.y);
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
