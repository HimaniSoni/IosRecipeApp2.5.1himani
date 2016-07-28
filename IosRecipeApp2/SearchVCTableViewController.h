//
//  SearchVCTableViewController.h
//  IosRecipeApp2
//
//  Created by indianic on 22/07/16.
//  Copyright © 2016 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchAllRecipesTableViewCell.h"
#import "Recipe.h"
#import "RecipeDisplayVC.h"
#import "SearchVC.h"



@interface SearchVCTableViewController : UITableViewController

- (IBAction)btnBarButtonBack:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@property (strong, nonatomic) NSMutableArray* allTableData;
@property (strong, nonatomic) NSMutableArray* filteredTableData;
@property (nonatomic, assign) bool isFiltered;



@end
