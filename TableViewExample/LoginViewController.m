//
//  LoginViewController.m
//  TableViewExample
//
//  Created by Jerry on 26/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize username;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:255.0/255 green:135.0/255 blue:0.0/255 alpha:1];
    [self.username.layer setBorderColor:[[[UIColor colorWithRed:252.0/255 green:192.0/255 blue:135.0/255 alpha:1.0] colorWithAlphaComponent:0.5] CGColor]];
    [self.username.layer setBorderWidth:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"signInSegue"]) {
        NSLog(@"yes it is");
    }
}

- (IBAction)signIn:(id)sender {
    NSLog(@"sign in clicked");
    [self performSegueWithIdentifier:@"signInSegue" sender:self];
}

@end
