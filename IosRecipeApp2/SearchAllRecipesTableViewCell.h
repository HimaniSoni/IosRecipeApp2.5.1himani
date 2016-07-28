//
//  SearchAllRecipesTableViewCell.h
//  IosRecipeApp2
//
//  Created by indianic on 22/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchAllRecipesTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *AllRecipeDisplayImageProp;
@property (strong, nonatomic) IBOutlet UIView *AllRecipeDisplayContentViewProp;
@property (strong, nonatomic) IBOutlet UILabel *lblAllRecipeName;
@property (strong, nonatomic) IBOutlet UILabel *lblAllRecipeCookingTime;
@property (strong, nonatomic) IBOutlet UILabel *lblAllRecipeServes;

@end
