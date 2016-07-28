//
//  HomeVC.m
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //navigation bar methods
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor lightGrayColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Cochin-Italic" size:21], NSForegroundColorAttributeName: [UIColor redColor]};
    
    
    
    //scrollview methods
    arrDailyRecipes = [NSMutableArray arrayWithObjects:@"homecholepuri.png",@"homepaneerbuttermasala.png",@"homepavbhaji.png",@"homevadapav.png",@"homepanipuri.png", nil];
    
    
    // array with dictionary for recipe name and description
    arrRecipeDescForLbl = @[@{@"recipeName": @" CholePuri", @"recipeDesc": @" Traditional autentic \n Punjabi food with \n spicy onion tomato gravy"},@{@"recipeName": @" Paneer Butter Masala", @"recipeDesc": @" Traditional autentic \nPunjabi food with spicy \n onion tomato gravy"}, @{@"recipeName": @" Pav Bhaji", @"recipeDesc": @" Street side food \n with spicy onion tomato \n gravy"}, @{@"recipeName": @" Vada Pav", @"recipeDesc": @" Street side food \n with spicy chillies \n and vadas"}, @{@"recipeName": @" Pani Puri", @"recipeDesc": @" Street side food \n with spicy masala and \n water"}].mutableCopy;
    
    
    
    
    //recipe cooking time,serves and setting respective icons for both methods
    arrRecipeDescForTS = @[@{@"cookingTime": @" 1hr", @"serveNo": @" 3-4"}, @{ @"cookingTime": @" 1hr", @"serveNo": @" 3-4"}, @{@"cookingTime": @" 1hr", @"serveNo": @" 3-4"}, @{@"cookingTime": @" 1hr", @"serveNo": @" 3-4"}, @{@"cookingTime": @" 1hr", @"serveNo": @" 13-14"}].mutableCopy;
    

    // Do any additional setup after loading the view from its nib.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return arrDailyRecipes.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
   HomeDailyRecipeCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HomeDailyRecipeCVCell" forIndexPath:indexPath];

    
    
   //defining properties of recipe name label
//    
    cell.topRatedRecipeHomeImgs.image = [UIImage imageNamed:[arrDailyRecipes objectAtIndex:indexPath.row]];
    
    cell.homeTopRatedRecipeName.text = [arrRecipeDescForLbl objectAtIndex:indexPath.row][@"recipeName"];
    cell.homeTopRatedRecipeName.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.5];
    cell.homeTopRatedRecipeName.layer.borderWidth = 1.0;
    cell.homeTopRatedRecipeName.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.4].CGColor;
    cell.homeTopRatedRecipeName.textColor = [UIColor whiteColor];
    cell.homeTopRatedRecipeName.font = [UIFont fontWithName:@"Cochin-Italic" size:35.0f];
    cell.homeTopRatedRecipeName.userInteractionEnabled = false;
    
    
    
    //defining properties of recipe description label
    cell.homeTopRatedRecipeDesc.text = [arrRecipeDescForLbl objectAtIndex:indexPath.row][@"recipeDesc"];
    cell.homeTopRatedRecipeDesc.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.5];
    cell.homeTopRatedRecipeDesc.layer.borderWidth = 1.0;
    cell.homeTopRatedRecipeDesc.numberOfLines = 4;
    cell.homeTopRatedRecipeDesc.lineBreakMode = YES;
    cell.homeTopRatedRecipeDesc.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.4].CGColor;
    cell.homeTopRatedRecipeDesc.textColor = [UIColor whiteColor];
    cell.homeTopRatedRecipeDesc.font = [UIFont fontWithName:@"Cochin-Bold" size:20.0f];
    cell.homeTopRatedRecipeDesc.userInteractionEnabled = false;

    
    
    //defining properties of recipe cooking time label
    cell.homeCookingTime.text = [arrRecipeDescForTS objectAtIndex:indexPath.row][@"cookingTime"];
    cell.homeCookingTime.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.4];
    cell.homeCookingTime.layer.borderWidth = 1.0;
    cell.homeCookingTime.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.4].CGColor;
    cell.homeCookingTime.textColor = [UIColor whiteColor];
    cell.homeCookingTime.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    cell.homeCookingTime.userInteractionEnabled = false;

    
    
    //defining properties of recipe serve counts label
    cell.homeServes.text = [arrRecipeDescForTS objectAtIndex:indexPath.row][@"serveNo"];
    cell.homeServes.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.4];
    cell.homeServes.layer.borderWidth = 1.0;
    cell.homeServes.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.4].CGColor;
    cell.homeServes.textColor = [UIColor whiteColor];
    cell.homeServes.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    cell.homeServes.userInteractionEnabled = false;
    
    return cell;
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
