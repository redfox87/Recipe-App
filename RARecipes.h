//
//  RARecipes.h
//  Recipe App
//
//  Created by Thomas Fox on 4/29/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RARecipes : NSObject

+ (NSInteger)count;

+ (NSDictionary *)recipeAtIndex:(NSInteger)index;

+ (NSString *)titleAtIndex:(NSInteger)index;

+ (NSString *)descriptionAtIndex:(NSInteger)index;

+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;

+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;

+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;
+ (NSArray *)directionsAtIndex:(NSInteger)index;

@end