//
//  SpecificitiesTableViewController.h
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewSpecificityViewController.h"


@interface SpecificitiesTableViewController : UITableViewController <AddNewSpecificityViewControllerViewDelegate>

@property (strong, nonatomic) NSMutableArray *addedSpecificities;

@end
