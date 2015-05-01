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
    CGFloat topMargin = 15;

    double topPlusHeight = 0.0;
    
    UIScrollView *scrollRecipes = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollRecipes.contentSize = CGSizeMake( self.view.frame.size.width, self.view.frame.size.height +20);
    scrollRecipes.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollRecipes];
    
    CGFloat heightDescription = [self heightForDescription:[RARecipes descriptionAtIndex:self.recipeIndex]];
    // ^^ this float employs the heightForDescription method. this returns  float that gives us a hieght size.
    // ^^ in this case we pass  the RARecipes object and its method descriptionatIndex as the argument for hieghtforDescription
    // ^^ the descriptionatindec method takes the recipeindex property (an integer) as its argument
    NSArray *directions = [RARecipes directionsAtIndex:self.recipeIndex];

    
    UILabel *descriptionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,topMargin, self.view.frame.size.width, heightDescription)];
    
    descriptionLabel.numberOfLines = 0; // this allows the descriptionLabel to take as many lines as it needs to display its content.
    descriptionLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    [scrollRecipes addSubview:descriptionLabel];
    
   
    
    // this For loop is going through the ammount of ingredients
    for(int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++)
    {
        UILabel *ingredientsLabels = [[UILabel alloc] initWithFrame:CGRectMake(0, descriptionLabel.frame.size.height + topMargin + 25 * i, self.view.frame.size.width, 20)];
        ingredientsLabels.numberOfLines = 0; // this allows the descriptionLabel to take as many lines as it needs to display its content.
        ingredientsLabels.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollRecipes addSubview:ingredientsLabels];
        
        UILabel *ingredientsLabelsValue = [[UILabel alloc] initWithFrame:CGRectMake(100, descriptionLabel.frame.size.height + topMargin + 25 * i, self.view.frame.size.width, 20)];
        ingredientsLabelsValue.numberOfLines = 0; // this allows the descriptionLabel to take as many lines as it needs to display its content.
        ingredientsLabelsValue.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollRecipes addSubview:ingredientsLabelsValue];
        
        topPlusHeight = ingredientsLabelsValue.frame.size.height + topMargin + 25 * i;
    }
    
    NSInteger directionLabelTopMargin = 0;
    
    for (int i = 0; i < [[RARecipes directionsAtIndex:self.recipeIndex] count]; i++) {
        CGFloat heightDirection = [self heightForDescription:[directions objectAtIndex:i]];
        
        UILabel *directionsLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100 + topPlusHeight + 150*i, self.view.frame.size.width, heightDirection)];
        directionsLabel.numberOfLines = 0;
    
        
        directionsLabel.text = [RARecipes directionsAtIndex:self.recipeIndex][i];
        
        [scrollRecipes addSubview:directionsLabel];
        
        directionLabelTopMargin += heightDirection;
    }
    
    
    }
- (CGFloat) heightForDescription:(NSString *) description
{
    CGRect bounding = [description boundingRectWithSize:CGSizeMake(self.view.frame.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];
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
