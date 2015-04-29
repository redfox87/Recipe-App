//
//  RAViewController.m
//  Recipe App
//
//  Created by Thomas Fox on 4/29/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RecipesTableViewDataSource.h"

@interface RAViewController ()

@property (strong, nonatomic) UITableView *TableView;
@property (strong, nonatomic) RecipesTableViewDataSource *dataSource;

@end

@implementation RAViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.TableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.dataSource = [RecipesTableViewDataSource new];
    self.TableView.dataSource = self.dataSource;
    [self.view addSubview:self.TableView];
    self.title = @"Favorite Recipes!";
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
