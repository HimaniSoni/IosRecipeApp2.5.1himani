//
//  SearchVCTableViewController.m
//  IosRecipeApp2
//
//  Created by indianic on 22/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import "SearchVCTableViewController.h"


@interface SearchVCTableViewController ()

@end

@implementation SearchVCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // navigation bar methods
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor lightGrayColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Cochin-Italic" size:21], NSForegroundColorAttributeName: [UIColor redColor]}
    ;
    
    
    // registering search bar delegate to this(self class)
    _searchBar.delegate = (id)self;
    
    
    // assigning values related to recipe to mutable array with help of a method declared in recipe.m for loading its values in table
    
    _allTableData = [[NSMutableArray alloc] initWithObjects:
                     [[Recipe alloc] initWithName:@"Chole Puri" andImage:@"homecholepuri" andCookingTime: @"30 min" andServes:@"2-3" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"tomato gravy", @"olive oil", @"onion chopped", @"garlic cloves", @"hot vegetable stock", @"salt and pepper", @"butter", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"2 cups",@"2tb",@"1",@"2",@"1.2l",@"a pinch",@"25g", nil]  andstepDescription: [NSMutableArray arrayWithObjects:@"rinse and soak the chole \n  (chickpeas) in enough \n water overnight",@"to give a dark color to \n the chana are added",@"season with salt \n and pressure cook the \n chana for 18 to 20 \n whistles",@"heat oil add \n ginger-garlic paste \n and saute till their raw \n aroma goes away",@"add tomatoes & \n saute them till \n they soften",@"add the cooked chole and garnish chole masala with coriander leaves", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4",@"recipe1.5",@"recipe1.6", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                     [[Recipe alloc] initWithName:@"Pav Bhaji" andImage:@"homepavbhaji" andCookingTime: @"45 min" andServes:@"3-4" andLocation: @"India" andAuthor: @"Avani" andIngredients: [NSMutableArray arrayWithObjects:@"tomato gravy", @"olive oil", @"onion chopped", @"garlic cloves", @"hot vegetable stock", @"salt and pepper", @"butter", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"2 cups",@"2tb",@"1",@"2",@"1.2l",@"a pinch",@"25g", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"Steam or cook all the \n vegetables except onions, \n tomatoes and capsicum \n in a pressure cooker", @"In a pan, melt butter", @"add the ginger-garlic \n paste, tomato gravy, \n capsicums and onions", @"Then add the chilly \n powder, turmeric \n powder and pav \n bhaji masala", @"Now add the mashed vegetables", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe2.1", @"recipe2.2",@"recipe2.3",@"recipe2.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                      [[Recipe alloc] initWithName:@"Panner Butter /n Masala" andImage:@"homepaneerbuttermasala" andCookingTime: @"1 hour" andServes:@"3-4" andLocation: @"India" andAuthor: @"Shell" andIngredients: [NSMutableArray arrayWithObjects:@"2 pavs", @"100 grams of potatos", @"2 garlic cloves", @"2 ginger", @"150 grams chana floor", @"Vegetable oil", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"2",@"100g",@"2",@"2",@"150",@"2tb", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                     [[Recipe alloc] initWithName:@"Pani Puri" andImage:@"homepanipuri" andCookingTime: @"1 hour" andServes:@"13-14" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"panner", @"onion(minced)", @"butter", @"tomato gravy", @"dry mustard", @"Salt and pepper", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"400",@"1/4",@"1tb",@"2cups",@"1",@"a pinch", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                     [[Recipe alloc] initWithName:@"Tomato Soup" andImage:@"RecipeTomatoSoup" andCookingTime: @"40 mins" andServes:@"2-3" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"tomato gravy", @"hot water", @"garlic cloves", @"pepper", @"cream", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"1 cups",@"2 cups",@"1",@"a pinch",@"25g", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                     [[Recipe alloc] initWithName:@"Chocolate Cake" andImage:@"chocolatecake" andCookingTime: @"40 mins" andServes:@"7-8" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"tomato gravy", @"oil", @"onion chopped", @"garlic cloves", @"hot vegetable stock", @"salt and pepper", @"butter", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"2 cups",@"2tb",@"1",@"2",@"1.2l",@"a pinch",@"25g", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     [[Recipe alloc] initWithName:@"Coffee" andImage:@"coffee" andCookingTime: @"10 mins" andServes:@"1-2" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"whole milk", @"white chocolate chips", @"coffee", @"whipped cream", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"2/3 cups",@"6tb",@"1tb",@"2tb", nil]andstepDescription: [NSMutableArray arrayWithObjects:@"Add instant \n coffee powder",@"Add hot water \n and milk",@"Add cream", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipecoffee1", @"recipecoffee2",@"recipecoffee3", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     [[Recipe alloc] initWithName:@"Pizza" andImage:@"pizza" andCookingTime: @"45 mins" andServes:@"4-5" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"cups flour", @"baking powder", @"teaspoon salt", @"beaten eggs", @"cup sugar", @"melted white chocolate", @"cup milk", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"3 1/4 cups",@"2tb",@"1/4",@"2",@"2/3 cup",@"2 ounce",@"1/2", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]],
                     
                     [[Recipe alloc] initWithName:@"Instant Noodles" andImage:@"maggi" andCookingTime: @"20 mins" andServes:@"4-5" andLocation: @"India" andAuthor: @"Himani" andIngredients: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andingredientsQuantity:[NSMutableArray arrayWithObjects:@"1",@"a pinch", nil] andstepDescription: [NSMutableArray arrayWithObjects:@"1 pack of Instant Noodle",@"Chilly Powder", nil] andstepImages: [NSMutableArray arrayWithObjects:@"recipe1.1", @"recipe1.2",@"recipe1.3",@"recipe1.4", nil] andstepNos: [NSMutableArray arrayWithObjects: @"butter",@"Chilly Powder", nil]], nil];
                     

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [self setSearchBar:nil];
    [super viewDidUnload];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //checking if person is on view controller or on search bar
    
    NSInteger rowCount;
    if(self.isFiltered)
        rowCount = _filteredTableData.count;
    else
        rowCount = _allTableData.count;
    
    return rowCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //instantiating custom cell of table view
    
    static NSString *CellIdentifier = @"SearchAllRecipesTableViewCell";
    
    SearchAllRecipesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
        cell = [[SearchAllRecipesTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    //displaying data in table according to state ie has searched or not
    
    Recipe *recipe;
    if(_isFiltered)
        recipe = [_filteredTableData objectAtIndex:indexPath.row];
    else
        recipe = [_allTableData objectAtIndex:indexPath.row];
   
    
    

    
    // Configure the cell...
    
    cell.backgroundColor = [UIColor whiteColor];
    
    //image view of cell
    cell.AllRecipeDisplayImageProp.image = [UIImage imageNamed:recipe.image];
    
    //side view of cell
    cell.AllRecipeDisplayContentViewProp.backgroundColor = [[UIColor brownColor]colorWithAlphaComponent:0.4];
    
    // recipe name label
    cell.lblAllRecipeName.text = recipe.name;
    cell.lblAllRecipeName.textColor = [UIColor whiteColor];
    cell.lblAllRecipeName.font = [UIFont fontWithName:@"Cochin-Italic" size:25.0f];
    cell.lblAllRecipeName.numberOfLines = 2;
    cell.lblAllRecipeName.textAlignment = NSTextAlignmentCenter;
    cell.lblAllRecipeName.userInteractionEnabled = false;
    
    //recipe cooking time label
    cell.lblAllRecipeCookingTime.text = recipe.cookingTime;
    cell.lblAllRecipeCookingTime.textColor = [UIColor whiteColor];
    cell.lblAllRecipeCookingTime.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    cell.lblAllRecipeCookingTime.userInteractionEnabled = false;
    
    //recipe serves label
    cell.lblAllRecipeServes.text = recipe.serves;
    cell.lblAllRecipeServes.textColor = [UIColor whiteColor];
    cell.lblAllRecipeServes.font = [UIFont fontWithName:@"Cochin-Italic" size:20.0f];
    cell.lblAllRecipeServes.userInteractionEnabled = false;


    
    return cell;
}


#pragma mark - Search Bar Delegate

-(void)searchBar:(UISearchBar*)searchBar textDidChange:(NSString*)text
{
    
    //searching ie filtering searched content from table methods
    
    if(text.length == 0)
    {
        _isFiltered = FALSE;
    }
    else
    {
        _isFiltered = true;
        _filteredTableData = [[NSMutableArray alloc] init];
        
        for (Recipe *recipe in _allTableData)
        {
            NSRange nameRange = [recipe.name rangeOfString:text options:NSCaseInsensitiveSearch];
            NSRange descriptionRange = [recipe.description rangeOfString:text options:NSCaseInsensitiveSearch];
            if(nameRange.location != NSNotFound || descriptionRange.location != NSNotFound)
            {
                [_filteredTableData addObject:recipe];
            }
        }
    }
    
    [self.tableView reloadData];
}


#pragma mark - Table view clicked and tapped methods

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    [self showDetailsForIndexPath:indexPath];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self showDetailsForIndexPath:indexPath];
}

-(void) showDetailsForIndexPath:(NSIndexPath*)indexPath
{
    [self.searchBar resignFirstResponder];
    RecipeDisplayVC  * recipeDisplayVc = [self.storyboard instantiateViewControllerWithIdentifier:@"RecipeDisplayVC"];
    
    Recipe *recipe;
    
    if(_isFiltered)
    {
        recipe = [_filteredTableData objectAtIndex:indexPath.row];
    }
    else
    {
        recipe = [_allTableData objectAtIndex:indexPath.row];
    }
    
   recipeDisplayVc.recipe = recipe;
    [self.navigationController pushViewController:recipeDisplayVc animated:true];
}


#pragma mark - back bar button tapped action
- (IBAction)btnBarButtonBack:(UIBarButtonItem *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
