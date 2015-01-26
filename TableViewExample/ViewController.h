//
//  ViewController.h
//  TableViewExample
//
//  Created by Jerry on 22/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *tableData;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSMutableArray *cars;

- (void)showAlert;

@end

