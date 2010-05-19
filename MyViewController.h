//
//  MyViewController.h
//  HelloWorld
//
//  Created by Sean Camden on 5/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MyViewController : UIViewController <UITextFieldDelegate> {
	
    UITextField *textField;
	
    UILabel *label;
	
    NSString *string;
	
}



@property (nonatomic, retain) IBOutlet UITextField *textField;

@property (nonatomic, retain) IBOutlet UILabel *label;

@property (nonatomic, copy) NSString *string;



- (IBAction)changeGreeting:(id)sender;



@end