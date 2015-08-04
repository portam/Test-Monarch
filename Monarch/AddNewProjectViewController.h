//
//  AddNewProjectViewController.h
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Project.h"

@protocol AddNewProjectViewControllerViewDelegate <NSObject>

@required
-(void) addProject:(Project *)project;
-(void) didCancel;

@end


@interface AddNewProjectViewController : UIViewController

@property (weak, nonatomic) id <AddNewProjectViewControllerViewDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameOfTheProjectTextField;

- (IBAction)addProjectButtonPressed:(UIButton *)sender;
- (IBAction)cancelAddingProjectButtonPressed:(UIButton *)sender;


@end


