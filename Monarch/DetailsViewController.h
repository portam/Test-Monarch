//
//  DetailsViewController.h
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Specificity.h"

@interface DetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *reccomandationLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) Specificity *specificity;

@end
