//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Thomas Fox on 4/29/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

static NSString *cellID = @"cellID";

@implementation RecipesTableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    cell.textLabel.font =[UIFont boldSystemFontOfSize:(20)];
    cell.detailTextLabel.font =[UIFont systemFontOfSize:(10)];
    cell.textLabel.textColor = [UIColor blueColor];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [RARecipes count];
}

@end
