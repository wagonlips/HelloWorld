//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Sean Camden on 5/16/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MyViewController.h"
#import "HelloWorldAppDelegate.h"

@implementation HelloWorldAppDelegate

@synthesize window;
@synthesize myViewController;

// The following line was written by Xcode. The line after is from the iPhone tutorial, Adding a View Controller.
// - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	MyViewController *aViewController = [[MyViewController alloc]
										 
										 initWithNibName:@"MyViewController" bundle:[NSBundle mainBundle]];
	
	[self setMyViewController:aViewController];
	
	[aViewController release];
	
	UIView *controllersView = [myViewController view];
	
	[window addSubview:controllersView];
	
    [window makeKeyAndVisible];
	
//	return YES;
}


- (void)dealloc {
	[myViewController release];
    [window release];
    [super dealloc];
}


@end
