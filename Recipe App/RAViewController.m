//
//  RAViewController.m
//  Recipe App
//
//  Created by Thomas Fox on 4/29/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
#import "RecipeDetailViewController.h"
@interface RAViewController ()<UITableViewDelegate>

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
    self.TableView.delegate = self;
    [self.view addSubview:self.TableView];
    self.title = @"Favorite Recipes!";
    self.TableView.backgroundColor = [UIColor grayColor];
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //This de-selects the cell after it's been clicked.
    RecipeDetailViewController *subViewRecipe = [[RecipeDetailViewController alloc] init];
    
    NSString *recipeName = [RARecipes titleAtIndex:indexPath.row];
   //This the makes the title correspond
    
    subViewRecipe.title = recipeName;
    
    subViewRecipe.recipeIndex = indexPath.row;
    
    [self.navigationController pushViewController:subViewRecipe animated:YES];
    
    
    
    //This is making it viewable on our second page
    
}


@end
