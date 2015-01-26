//
//  LoginViewController.h
//  TableViewExample
//
//  Created by Jerry on 26/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;

- (IBAction)signIn:(id)sender;

@end
