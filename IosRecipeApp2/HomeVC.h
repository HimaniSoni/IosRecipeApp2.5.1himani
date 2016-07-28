//
//  HomeVC.h
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeDailyRecipeCVCell.h"

@interface HomeVC : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate>
{
    
    NSMutableArray *arrDailyRecipes;
    NSMutableArray *arrRecipeDescForLbl;
    NSMutableArray *arrRecipeDescForTS;
 
}

@property (strong, nonatomic) IBOutlet UICollectionView *homeTopRatedRecipeCV;

@end
