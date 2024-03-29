//
//  MyViewController.m
//  HelloWorld
//
//  Created by Sean Camden on 5/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"



@implementation MyViewController



@synthesize textField;

@synthesize label;

@synthesize string;

- (IBAction)changeGreeting:(id)sender {
	
	
	
    self.string = textField.text;
	
	
	
    NSString *nameString = string;
	
    if ([nameString length] == 0) {
		
        nameString = @"World";
		
    }
	
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
	
    label.text = greeting;
	
    [greeting release];
	
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	
    if (theTextField == textField) {
		
        [textField resignFirstResponder];
		
    }
	
    return YES;
	
}


- (void)dealloc {
	
    [textField release];
	
    [label release];
	
    [string release];
	
    [super dealloc];
	
}



@end
