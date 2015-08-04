//
//  AddNewProjectViewController.m
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "AddNewProjectViewController.h"

@interface AddNewProjectViewController ()

@end

@implementation AddNewProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *monarchImage = [UIImage imageNamed:@"Monarch1.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:monarchImage];
    
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

- (IBAction)addProjectButtonPressed:(UIButton *)sender {
        Project *newProject = [self returnNewProject];
        [self.delegate addProject:newProject];
}

- (IBAction)cancelAddingProjectButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

-(Project *) returnNewProject{
    Project *addedProject = [[Project alloc] init];
    
    addedProject.projectName = self.nameOfTheProjectTextField.text;
    addedProject.projectCategory1 = @"General Property Overview";
    addedProject.projectSubCategory11 = @"General Property Overview";
    addedProject.projectCategory2 = @"Structure";
    addedProject.projectSubCategory21 = @"Structure";
    addedProject.projectCategory3 = @"Building Fabric";
    addedProject.projectSubCategory31 = @"Roof";
    addedProject.projectSubCategory32 = @"Façade";
    addedProject.projectSubCategory33 = @"Interior";
    addedProject.projectCategory4 = @"External Areas";
    addedProject.projectSubCategory41 = @"Hard and Soft Landscaping";
    addedProject.projectSubCategory42 = @"Vegetation";
    addedProject.projectSubCategory43 = @"Boundary";
    addedProject.projectCategory5 = @"Building Services";
    addedProject.projectSubCategory51 = @"Mechanical";
    addedProject.projectSubCategory52 = @"Electrical";
    addedProject.projectSubCategory53 = @"Communications";
    addedProject.projectSubCategory54 = @"Security";
    addedProject.projectSubCategory55 = @"Building Management Control";
    addedProject.projectSubCategory56 = @"Hydrolics";
    addedProject.projectSubCategory57 = @"Fire Protection";
    addedProject.projectSubCategory58 = @"Emergency Services";
    addedProject.projectSubCategory59 = @"Vertical Transportation";
    addedProject.projectCategory6 = @"HSE";
    addedProject.projectSubCategory61 = @"Building Code Compliance";
    addedProject.projectSubCategory62 = @"Accessibility";
    addedProject.projectCategory7 = @"Building Efficiency";
    addedProject.projectSubCategory71 = @"Workplace";
    addedProject.projectSubCategory72 = @"Loss Coefficient";
    addedProject.projectCategory8 = @"Others";
    addedProject.projectSubCategory81 = @"Others";
  

    return addedProject;
}

@end



