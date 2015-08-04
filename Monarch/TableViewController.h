//
//  TableViewController.h
//  Monarch
//
//  Created by Amaury Portier on 01/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewProjectViewController.h"

@interface TableViewController : UITableViewController <AddNewProjectViewControllerViewDelegate>

@property (strong, nonatomic) NSMutableArray *addedProjects;

@end
