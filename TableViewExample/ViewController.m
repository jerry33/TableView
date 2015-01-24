//
//  ViewController.m
//  TableViewExample
//
//  Created by Jerry on 22/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "Car.h"
#import "CarCell.h"

#define CELL_ID @"CarCell"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *tableData;
}

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if(self) {
        //custom initialization
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Jozko", @"Misko", @"Anka", @"Ferko", @"Zuzka", @"Jarko", @"Miska", nil];
    self.cars = [NSMutableArray arrayWithCapacity:tableData.count];
    
    for (int i = 0; i < tableData.count; i++) {
        Car *car = [[Car alloc] init];
        car.title = [tableData objectAtIndex:i];
        [self.cars addObject:car];
    }
    
    [self.tableView registerClass:[CarCell class] forCellReuseIdentifier:@"Cell"];
    
    self.navigationItem.title = @"Cars";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = CELL_ID;

    CarCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    Car *currCar = [self.cars objectAtIndex:indexPath.row];
    cell.titleLabel.text = currCar.title;
    NSLog(@"%@", cell.titleLabel.text);
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIAlertView *uiAlertView = [[UIAlertView alloc]
                                initWithTitle:@"Clicked"
                                message:[NSString stringWithFormat:@"Just clicked %@", [tableData objectAtIndex:indexPath.row]]
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                otherButtonTitles:@"Yeah", nil];
    [uiAlertView show];
//    MyViewController *myViewController = [[MyViewController alloc] initWithNibName:@"MyViewController" bundle:nil];
//    MyViewController *myViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"myViewController"];
//    [self.navigationController pushViewController:myViewController animated:YES];
//    self.name = [tableData objectAtIndex:indexPath.row];
//    [self performSegueWithIdentifier:@"showDetailSegue" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showDetailSegue"]) {
        MyViewController *myViewController = (MyViewController*)[segue destinationViewController];
        myViewController.name = self.name;
    }
}

@end
