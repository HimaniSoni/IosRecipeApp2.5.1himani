
//  SearchVC.h
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoriesVC.h"
#import "FavouritesVC.h"
#import "SearchVCTableViewController.h"
#import "HomeVC.h"
#import "SearchByIngredientsViewController.h"

@interface SearchVC : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btnAllRecipesProp;
@property (strong, nonatomic) IBOutlet UIButton *btnByIngredientsProp;
@property (strong, nonatomic) IBOutlet UIButton *btnByCategoriesProp;
@property (strong, nonatomic) IBOutlet UIButton *btnByRegionProp;
@property (strong, nonatomic) IBOutlet UIButton *btnByFavouritesProp;

- (IBAction)btnBarBackFromSearchVC:(UIBarButtonItem *)sender;
- (IBAction)btnByAllRecipes:(UIButton *)sender;
- (IBAction)btnSearchByIngredients:(UIButton *)sender;
- (IBAction)btnSearchByCategories:(UIButton *)sender;
- (IBAction)btnSearchByRegion:(UIButton *)sender;
- (IBAction)btnSearchByFavourites:(UIButton *)sender;


@end
