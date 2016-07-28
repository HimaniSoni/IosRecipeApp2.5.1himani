//
//  SearchVC.m
//  IosRecipeApp2
//
//  Created by indianic on 21/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import "SearchVC.h"

@interface SearchVC ()

@end

@implementation SearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigation bar methods
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor lightGrayColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Cochin-Italic" size:21], NSForegroundColorAttributeName: [UIColor redColor]};


    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnBarBackFromSearchVC:(UIBarButtonItem *)sender {
    
    HomeVC *hVC = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    [self.navigationController pushViewController:hVC animated:true];
}

- (IBAction)btnByAllRecipes:(UIButton *)sender {
    
    SearchVCTableViewController *objsVc = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchVCTableViewController"];
    [self.navigationController pushViewController:objsVc animated:true];
}

- (IBAction)btnSearchByIngredients:(UIButton *)sender {
    
    SearchByIngredientsViewController *searchVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchByIngredientsViewController"];
    [self.navigationController pushViewController:searchVC animated:true];

}

- (IBAction)btnSearchByCategories:(UIButton *)sender {
    
    //instantiating categories view controller on button click
    
    CategoriesVC *objCategoriesVc = [self.storyboard instantiateViewControllerWithIdentifier:@"CategoriesVC"];
    [self.navigationController pushViewController:objCategoriesVc animated:true];
    
}

- (IBAction)btnSearchByRegion:(UIButton *)sender {
}
- (IBAction)btnSearchByFavourites:(UIButton *)sender {
    
    //instantiating favourites view controller on button click
    
    FavouritesVC *objFavouriteVc = [self.storyboard instantiateViewControllerWithIdentifier:@"FavouritesVC"];
    [self.navigationController pushViewController:objFavouriteVc animated:true];
    
}
@end
