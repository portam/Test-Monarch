//
//  DetailsViewController.m
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "DetailsViewController.h"
#import "Specificity.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = self.specificity.specificityTitle;
    self.descriptionLabel.text = self.specificity.specificityDescription;
    self.reccomandationLabel.text = self.specificity.specificityRecommmendation;
    NSLog(@"%@", self.specificity.specificityDescription);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
