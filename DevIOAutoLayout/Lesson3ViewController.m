//
//  Lesson3ViewController.m
//  DevIOAutoLayout
//
//  Created by hiraya.shingo on 2015/03/19.
//  Copyright (c) 2015年 Classmethod, inc. All rights reserved.
//

#import "Lesson3ViewController.h"

@interface Lesson3ViewController ()

@property (weak, nonatomic) IBOutlet UIView *menuView;

@end

@implementation Lesson3ViewController

- (IBAction)menuButtonDidTap:(id)sender
{
    self.menuView.hidden = !self.menuView.hidden;
}

@end
