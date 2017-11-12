//
//  ViewController.m
//  EmbedSegueDemo
//
//  Created by 王庆学 on 2017/11/12.
//  Copyright © 2017年 王庆学. All rights reserved.
//

#import "ViewController.h"
#import "BaseTableViewController.h"

@interface ViewController ()

@property (nonatomic, strong) BaseTableViewController *segueBaseTableViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSArray *dataArray = @[@"第一行",@"第二行",@"第三行",@"第四行"];
    if ([segue.identifier isEqualToString:@"BaseEmbedSegue"]){
        self.segueBaseTableViewController = segue.destinationViewController;
        self.segueBaseTableViewController.arrayData = dataArray;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
