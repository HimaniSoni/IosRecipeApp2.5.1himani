#import "Recipe.h"

@implementation Recipe

-(id) initWithName:(NSString *)theName andImage:(NSString*)theImage andCookingTime: (NSString *)thecookingTime andServes:(NSString*) theServes andLocation: (NSString *)theLocation andAuthor: (NSString *)theAuthor
    andIngredients: (NSMutableArray *)theIngredients andingredientsQuantity:(NSMutableArray *)theingredientsQuantity andstepDescription: (NSMutableArray *)thestepDescription andstepImages: (NSMutableArray *)thestepImages andstepNos: (NSMutableArray *)thestepNos
{
    self = [super init];
    if(self)
    {
        self.name = theName;
        self.image = theImage;
        self.cookingTime = thecookingTime;
        self.serves = theServes;
        self.location = theLocation;
        self.authorname = theAuthor;
        self.ingredients = theIngredients;
        self.ingredientsQuantity = theingredientsQuantity;
        self.stepDescription =thestepDescription;
        self.stepImages = thestepImages;
        self.stepNos = thestepNos;
        
    }
    return self;
}

-(id) initwithIngredientName:(NSString *) theIngredientName andIngredientImage: (NSString *) theIngredientImage andCheckSelected: (NSString *) theisSelected
{

   
    if(self)
    {
        self.ingredientsNames = theIngredientName;
        self.ingredientsImages = theIngredientImage;
        self.isSelected = theisSelected;


    }
    return self;
}

@end
