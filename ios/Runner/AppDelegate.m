#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
//
//@implementation AppDelegate
//
//- (BOOL)application:(UIApplication *)application
//    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//  [GeneratedPluginRegistrant registerWithRegistry:self];
//  // Override point for customization after application launch.
//  return [super application:application didFinishLaunchingWithOptions:launchOptions];
//}
//
//

@import UIKit;
@import Firebase;

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [FIRApp configure];
    [GeneratedPluginRegistrant registerWithRegistry:self];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
    //return YES;
}

//- (BOOL)application:(UIApplication *)application
//didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [FIRApp configure];
//    return YES;
//}
@end
