//
//  MyViewController.h
//  TableViewExample
//
//  Created by Jerry on 23/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property (nonatomic) BOOL *isSomethingEnabled;
@property (nonatomic) NSString *name;
@property (weak, nonatomic) IBOutlet UILabel *myNewLabel;


@end
