//
//  RootViewController.m
//  DevIOAutoLayout
//
//  Created by hiraya.shingo on 2015/03/19.
//  Copyright (c) 2015年 Classmethod, inc. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Lesson1";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"Lesson1Answer";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"Lesson2";
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"Lesson2Answer";
    } else if (indexPath.row == 4) {
        cell.textLabel.text = @"Lesson3";
    } else {
        cell.textLabel.text = @"Lesson3Answer";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson1" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 1) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson1Answer" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 2) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson2" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 3) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson2Answer" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 4) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson3" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    } else {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Lesson3Answer" bundle:nil];
        UIViewController *viewController = [storyboard instantiateInitialViewController];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
