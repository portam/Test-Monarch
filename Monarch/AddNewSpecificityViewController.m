//
//  AddNewSpecificityViewController.m
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "AddNewSpecificityViewController.h"

@interface AddNewSpecificityViewController ()

@end

@implementation AddNewSpecificityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)addSpecificityButtonPressed:(UIButton *)sender {
    Specificity *newSpecificity = [self returnNewSpecificity];
    [self.delegate addSpecificity:newSpecificity];
}

- (IBAction)cancelAddingSpecificityButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

-(Specificity *) returnNewSpecificity{
    Specificity *addedSpecificity = [[Specificity alloc] init];
    addedSpecificity.specificityTitle = self.specificityTitleTextField.text;
    addedSpecificity.specificityDescription = self.descriptionTextView.text;
    addedSpecificity.specificityRecommmendation = self.reccomandationTextView.text;
    
    addedSpecificity.specificityImage = [UIImage imageNamed:@"Monarch1.jpg"];
    
    return addedSpecificity;
}

@end
