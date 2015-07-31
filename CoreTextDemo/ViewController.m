//
//  ViewController.m
//  CoreTextDemo
//
//  Created by Alta on 15/6/12.
//  Copyright (c) 2015年 Alta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *alist=@[@"hello,",@"nice to meet",@"you"];
    NSString *str=[alist componentsJoinedByString:@" "];
    NSLog(@"%@",str);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
