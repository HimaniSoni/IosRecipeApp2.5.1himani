//
//  RecipeDisplayVC.h
//  IosRecipeApp2
//
//  Created by indianic on 22/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeDisplayIngredientsCVCell.h"
#import "RecipeDisplayStepsTableViewCell.h"
#import "SearchVCTableViewController.h"
#import "Recipe.h"
#import "FavouritesVC.h"

@interface RecipeDisplayVC : UIViewController{
    
    NSArray *recipeDisplayValuesCollection;


}
@property (strong, nonatomic) IBOutlet UIImageView *RecipeDisplayCoverPhoto;
@property (strong, nonatomic) IBOutlet UIView *recipeDisplayViewForItsProperties;
@property (strong, nonatomic) IBOutlet UILabel *lblRecipeDisplayLocationName;
@property (strong, nonatomic) IBOutlet UICollectionView *ingredientsDisplayCVProp;
@property (strong, nonatomic) IBOutlet UILabel *lblRecipeDisplayCookingTime;
@property (strong, nonatomic) IBOutlet UILabel *lblRecipeDisplayServes;
@property (strong, nonatomic) IBOutlet UITableView *RecipeDisplayStepsTBVProp;
@property (strong, nonatomic) IBOutlet UILabel *lblRecipeDisplayName;
@property (strong, nonatomic) IBOutlet UILabel *lblRecipeDisplayAuthorName;
- (IBAction)btnFavourites:(UIButton *)sender;
- (IBAction)btnShare:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *favouriteProp;
@property (strong, nonatomic) IBOutlet UIButton *shareProp;


@property (strong, nonatomic) Recipe *recipe;

@end
