//
//  CarCell.h
//  TableViewExample
//
//  Created by Jerry on 23/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *carImageView;

@end
