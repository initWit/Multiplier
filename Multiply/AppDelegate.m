//
//  AppDelegate.m
//  Multiply
//
//  Created by Robert Figueras on 5/12/14.
//

#import "AppDelegate.h"
#import <CheckMate/CheckMate.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    [CheckMate initializeFramework:@[@"d3006ae1b0e73d5213da0c7ca54c0af5",@"9da9526b8650d4b44fa850e72e3001cf"]];

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
