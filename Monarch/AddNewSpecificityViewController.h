//
//  AddNewSpecificityViewController.h
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Specificity.h"

@protocol AddNewSpecificityViewControllerViewDelegate <NSObject>

@required
-(void) addSpecificity:(Specificity *)specificity;
-(void) didCancel;

@end

@interface AddNewSpecificityViewController : UIViewController

@property (weak, nonatomic) id <AddNewSpecificityViewControllerViewDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *specificityTitleTextField;
@property (strong, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (strong, nonatomic) IBOutlet UITextView *reccomandationTextView;

- (IBAction)addSpecificityButtonPressed:(UIButton *)sender;
- (IBAction)cancelAddingSpecificityButtonPressed:(UIButton *)sender;


@end
