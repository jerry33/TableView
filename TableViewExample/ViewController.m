//
//  ViewController.m
//  TableViewExample
//
//  Created by Jerry on 22/01/15.
//  Copyright (c) 2015 Jerry. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects:@"Jozko", @"Misko", @"Anka", @"Ferko", @"Zuzka", @"Jarko", @"Miska", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UIAlertView *uiAlertView = [[UIAlertView alloc]
//                                initWithTitle:@"Clicked"
//                                message:[NSString stringWithFormat:@"Just clicked %@", [tableData objectAtIndex:indexPath.row]]
//                                delegate:self
//                                cancelButtonTitle:@"Cancel"
//                                otherButtonTitles:@"Yeah", nil];
//    [uiAlertView show];
//    MyViewController *myViewController = [[MyViewController alloc] initWithNibName:@"MyViewController" bundle:nil];
//    MyViewController *myViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"myViewController"];
//    [self.navigationController pushViewController:myViewController animated:YES];
    self.name = [tableData objectAtIndex:indexPath.row];
    NSLog(@"%@", self.name);
    [self performSegueWithIdentifier:@"showDetailSegue" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"mehehe");
    if ([segue.identifier isEqualToString:@"showDetailSegue"]) {
        MyViewController *myViewController = (MyViewController*)[segue destinationViewController];
//        UINavigationController *navController = (UINavigationController*)[segue destinationViewController];
//        MyViewController *myViewController = (MyViewController*)[navController topViewController];
        myViewController.name = self.name;
    }
}

@end
