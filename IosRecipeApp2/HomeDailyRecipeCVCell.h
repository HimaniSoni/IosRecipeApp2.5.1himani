//
//  HomeDailyRecipeCVCell.h
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeDailyRecipeCVCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *topRatedRecipeHomeImgs;
@property (strong, nonatomic) IBOutlet UILabel *homeTopRatedRecipeName;
@property (strong, nonatomic) IBOutlet UILabel *homeTopRatedRecipeDesc;
@property (strong, nonatomic) IBOutlet UILabel *homeCookingTime;
@property (strong, nonatomic) IBOutlet UILabel *homeServes;
@property (strong, nonatomic) IBOutlet UIImageView *homeImgForCookingTime;
@property (strong, nonatomic) IBOutlet UIImageView *homeImgForServes;

@end
