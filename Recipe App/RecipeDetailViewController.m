//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Thomas Fox on 4/30/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import "RecipeDetailViewController.h"

@interface RecipeDetailViewController ()


@end

@implementation RecipeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat topMargin = 0;

    
    
    UIScrollView *scrollRecipes = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollRecipes.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollRecipes];
    
    CGFloat heightDescription = [self heightForDescription:[RARecipes descriptionAtIndex:self.recipeIndex]];
    UILabel *descriptionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,topMargin, self.view.frame.size.width, heightDescription)];
    descriptionLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    
    
    
    [scrollRecipes addSubview:descriptionLabel];
    
    UILabel *ingredientsLabels = [[UILabel alloc] initWithFrame:CGRectMake(0, descriptionLabel.frame.size.height + topMargin, self.view.frame.size.width, self.view.frame.size.height)];
    
    UILabel *directionLabels = [[UILabel alloc]initWithFrame:CGRectMake(0, descriptionLabel.frame.size.height + ingredientsLabels.frame.size.height + topMargin, self.view.frame.size.width, self.view.frame.size.height)];
}
- (CGFloat) heightForDescription:(NSString *) description
{
    CGRect bounding = [description boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2, FLT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:nil context:nil];
    return bounding.size.height;
    
    
    
    
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
