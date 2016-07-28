#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, retain) NSString *name; // name of recipe
@property (nonatomic, retain) NSString *cookingTime; // preparation time
@property (nonatomic, retain) NSString *image; // image filename of recipe
@property (nonatomic, retain) NSString *serves; // no of serves for recipe
@property (nonatomic, strong) NSMutableArray *ingredients; // ingredients of recipe
@property (nonatomic, strong) NSString *location; // location of recipe origin
@property (nonatomic, strong) NSString *authorname; // author of recipe origin
@property (nonatomic, strong) NSMutableArray *stepDescription; // what are the steps performed for recipe
@property (nonatomic, strong) NSMutableArray *ingredientsQuantity; // what are the steps performed for recipe
@property (nonatomic, strong) NSMutableArray *stepImages; // images of recipe per steps
@property (nonatomic,strong) NSMutableArray *stepNos; // no of steps for making recipe
@property (nonatomic, strong) NSString *ingredientsImages; // search by ingredients images
@property (nonatomic, strong) NSString *ingredientsNames; // search by ingredients name
@property (nonatomic, strong)NSString *isSelected; // for selecting ingredients

-(id) initWithName:(NSString*)theName andImage:(NSString*)theImage andCookingTime: (NSString *)thecookingTime andServes:(NSString*) theServes andLocation: (NSString *)theLocation andAuthor: (NSString *)theAuthor andIngredients: (NSMutableArray *)theIngredients andingredientsQuantity: (NSMutableArray *)theingredientsQuantity andstepDescription: (NSMutableArray *)thestepDescription andstepImages: (NSMutableArray *)thestepImages andstepNos: (NSMutableArray *)thestepNos;

-(id) initwithIngredientName:(NSString *) theIngredientName andIngredientImage: (NSString *) theIngredientImage andCheckSelected: (NSString *) theisSelected;

@end
