//
//  CategoriesTableViewController.h
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Project.h"



@interface CategoriesTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic)Project *project;

@end
