//
//  RecipeDisplayVC.m
//  IosRecipeApp2
//
//  Created by indianic on 22/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import "RecipeDisplayVC.h"

@interface RecipeDisplayVC ()
{
    int a;
}
@end

@implementation RecipeDisplayVC

- (void)viewDidLoad {
    [super viewDidLoad];
    a=0;
    // navigation bar methods
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor lightGrayColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Cochin-Italic" size:21], NSForegroundColorAttributeName: [UIColor redColor]};
 }

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidUnload
{
    [self setLblRecipeDisplayName:nil];
    
    [super viewDidUnload];
}

-(void)viewWillAppear:(BOOL)animated
{
    _RecipeDisplayCoverPhoto.image = [UIImage imageNamed:_recipe.image];
    
    //recipe name text and display properties
    _lblRecipeDisplayName.text = _recipe.name;
    _lblRecipeDisplayName.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.5];
    _lblRecipeDisplayName.textColor = [UIColor whiteColor];
    _lblRecipeDisplayName.font = [UIFont fontWithName:@"Cochin-Italic" size:25.0f];
    _lblRecipeDisplayName.layer.borderWidth = 1.0;
    _lblRecipeDisplayName.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.3].CGColor;
    _lblRecipeDisplayName.userInteractionEnabled = false;

    
    //recipe cooking time text and display properties
    _lblRecipeDisplayCookingTime.text = _recipe.cookingTime;
    _lblRecipeDisplayCookingTime.textColor = [UIColor whiteColor];
    _lblRecipeDisplayCookingTime.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
   _lblRecipeDisplayCookingTime.userInteractionEnabled = false;
    
    //recipe serves text and display properties
    _lblRecipeDisplayServes.text = _recipe.serves;
    _lblRecipeDisplayServes.textColor = [UIColor whiteColor];
    _lblRecipeDisplayServes.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
   _lblRecipeDisplayServes.userInteractionEnabled = false;
    
    //recipe cooking location text and display properties
    _lblRecipeDisplayLocationName.text = _recipe.location;
    _lblRecipeDisplayLocationName.textColor = [UIColor whiteColor];
    _lblRecipeDisplayLocationName.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    _lblRecipeDisplayLocationName.userInteractionEnabled = false;
    
    
    //recipe author name text and display properties
    _lblRecipeDisplayAuthorName.text = [NSString stringWithFormat:@"Recipe By : %@...", _recipe.authorname];
    _lblRecipeDisplayAuthorName.backgroundColor = [[UIColor darkGrayColor]colorWithAlphaComponent:0.5];
    _lblRecipeDisplayAuthorName.textColor = [UIColor whiteColor];
    _lblRecipeDisplayAuthorName.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    _lblRecipeDisplayAuthorName.layer.borderWidth = 1.0;
    _lblRecipeDisplayAuthorName.layer.borderColor = [[UIColor redColor] colorWithAlphaComponent:0.3].CGColor;
    _lblRecipeDisplayAuthorName.userInteractionEnabled = false;

    
}

#pragma mark - Collection view data source

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return _recipe.ingredients.count;
    
}

#pragma mark - UICollectionView datasource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    RecipeDisplayIngredientsCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"RecipeDisplayIngredientsCVCell" forIndexPath:indexPath];
    
    // setting backgroung color for whole collection view
    collectionView.backgroundColor = [UIColor whiteColor];
    
    
    
    // getting values for ingredients stored in nsmutable array and initiallized in SearchVCTableViewController
    NSMutableArray *ingredientsText = [NSMutableArray array];
    for (NSString* andIngredients in self.recipe.ingredients) {
        [ingredientsText addObject:andIngredients];
    }
    
    NSLog(@"%@", ingredientsText);
    cell.lblIngredientsCVCellProp.text = [ingredientsText objectAtIndex:indexPath.row];
    
    //setting ingredinets lable text and display properties
    cell.lblIngredientsCVCellProp.textColor = [UIColor whiteColor];
    cell.lblIngredientsCVCellProp.textAlignment = NSTextAlignmentCenter;
    cell.lblIngredientsCVCellProp.font = [UIFont fontWithName:@"Cochin-BoldItalic" size:20.0f];
    cell.lblIngredientsCVCellProp.userInteractionEnabled = false;
    
    
   // getting values for ingredients quantity stored in nsmutable array and initiallized in SearchVCTableViewController
    NSMutableArray *ingredientsQuantity = [NSMutableArray array];
    for (NSString* andingredientsQuantity in self.recipe.ingredientsQuantity) {
        [ingredientsQuantity addObject:andingredientsQuantity];
    }
    NSLog(@"%@", ingredientsQuantity);
    cell.lblIngredientsQuantity.text = [ingredientsQuantity objectAtIndex:indexPath.row];

    //setting ingredinets lable text and display properties
    cell.lblIngredientsQuantity.textColor = [UIColor whiteColor];
    cell.lblIngredientsQuantity.textAlignment = NSTextAlignmentCenter;
    cell.lblIngredientsQuantity.font = [UIFont fontWithName:@"Cochin-BoldItalic" size:20.0f];
    cell.lblIngredientsQuantity.userInteractionEnabled = false;


    return cell;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _recipe.stepDescription.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setting whole table view background color
    tableView.backgroundColor = [UIColor whiteColor];
    
    //initializing custom cell of table view
    static NSString *CellIdentifier = @"RecipeDisplayStepsTableViewCell";
    RecipeDisplayStepsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //setting whole custome cell background color
    cell.backgroundColor = [UIColor whiteColor];
    
    
    // getting values for recipe description stored in nsmutable array and initiallized in SearchVCTableViewController
    NSMutableArray *stepdesc = [NSMutableArray array];
    for (NSString* andstepDescription in self.recipe.stepDescription) {
        [stepdesc addObject:andstepDescription];
    }
    NSLog(@"step desc %@", stepdesc);
    cell.RecipeDisplayStepDescCell.text = [stepdesc objectAtIndex:indexPath.row];
    
    //setting recipe description lable text and display properties
    cell.RecipeDisplayStepDescCell.textColor = [UIColor redColor];
    cell.RecipeDisplayStepDescCell.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    cell.RecipeDisplayStepDescCell.numberOfLines = 5;
    cell.RecipeDisplayStepDescCell.userInteractionEnabled = false;
    


    // getting values for recipe step wise images stored in nsmutable array and initiallized in SearchVCTableViewController
    NSMutableArray *imageStepName = [NSMutableArray array];
    for (NSString* andstepImages in self.recipe.stepImages) {
        
        [imageStepName addObject:andstepImages];
        
        }
    NSLog(@"images %@", imageStepName);
    
    //setting recipe images per step display properties
    cell.RecipeDisplayStepCellImg.image = [UIImage imageNamed:[imageStepName objectAtIndex:indexPath.row]];
    cell.RecipeDisplayStepCellImg.layer.cornerRadius = 15.0f;
    cell.RecipeDisplayStepCellImg.layer.masksToBounds = YES;
    cell.RecipeDisplayStepCellImg.layer.borderWidth = 3.0;
    cell.RecipeDisplayStepCellImg.layer.borderColor = [[UIColor redColor]colorWithAlphaComponent:0.7].CGColor;
    
    
    // getting values for recipe step nos stored in nsmutable array and initiallized in SearchVCTableViewController
    NSMutableArray *stepno = [NSMutableArray array];
    for (NSString* andstepDescription in self.recipe.stepDescription) {
        
        [stepno addObject: andstepDescription];
        
    };
    NSLog(@" step nos %@", stepno);
    
    //setting recipe step no lable text and display properties
    cell.RecipeDisplayStepNoCell.text = [NSString stringWithFormat:@" Step No: %ld",   (long)indexPath.row+1];
    cell.RecipeDisplayStepNoCell.textColor = [UIColor redColor];
    cell.RecipeDisplayStepNoCell.font = [UIFont fontWithName:@"Cochin-Italic" size:25.0f];
    cell.RecipeDisplayStepNoCell.userInteractionEnabled = false;

    

    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UIBarButton on tapped pop VC 

- (IBAction)btnBarButtonBack:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
}

#pragma mark - Favourite And Share buttons on tapped

- (IBAction)btnFavourites:(UIButton *)sender {
    
    
    a++;
    if(a%2==0){
        
        [_shareProp setImage:[UIImage imageNamed:@"hearts.png"] forState:UIControlStateNormal];
        
    }
    else
    {
        
        [_shareProp setImage:[UIImage imageNamed:@"heartsadded.png"] forState:UIControlStateNormal];
    }

}

- (IBAction)btnShare:(UIButton *)sender {

    
    a++;
    if(a%2==0){
       
        [_shareProp setImage:[UIImage imageNamed:@"sharesadded.png"] forState:UIControlStateNormal];
       
    }
    else
    {
        
        [_shareProp setImage:[UIImage imageNamed:@"shares.png"] forState:UIControlStateNormal];
    }
}
@end
