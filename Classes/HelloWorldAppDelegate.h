//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Sean Camden on 5/16/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>



@class MyViewController;



@interface HelloWorldAppDelegate : NSObject <UIApplicationDelegate> {
	
    UIWindow *window;
	
    MyViewController *myViewController;
	
}



@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) MyViewController *myViewController;



@end

