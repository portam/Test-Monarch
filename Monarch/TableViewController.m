//
//  TableViewController.m
//  Monarch
//
//  Created by Amaury Portier on 01/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "TableViewController.h"
#import "Project.h"
#import "AddNewProjectViewController.h"
#import "CategoriesTableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
#define ADDED_PROJECTS_KEY @"Added Projects Array"

#pragma mark - Lazy instantiation

-(NSMutableArray *)addedProjects{
    if (!_addedProjects) {
        _addedProjects = [[NSMutableArray alloc] init];
    }
    return _addedProjects;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *monarchImage = [UIImage imageNamed:@"Monarch1.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:monarchImage];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSArray *projectAsPropertyLists = [[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_PROJECTS_KEY];
    for (NSDictionary *dictionary in projectAsPropertyLists) {
        Project *project = [self projectForDictionary:dictionary];
        [self.addedProjects addObject:project];
//        NSLog(@"%@", project.projectCategory1);
//        NSLog(@"%@", project.projectCategory2);
//        NSLog(@"%@", project.projectCategory3);
//        NSLog(@"%@", project.projectCategory4);
//        NSLog(@"%@", project.projectCategory5);
//        NSLog(@"%@", project.projectCategory6);
//        NSLog(@"%@", project.projectCategory7);
//        NSLog(@"%@", project.projectCategory8);
    }
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[NSIndexPath class]]) {
        if([segue.destinationViewController isKindOfClass:[CategoriesTableViewController class]]){
            CategoriesTableViewController *targetViewController = segue.destinationViewController;
            NSIndexPath *path = sender;
            Project *selectedProject;
            selectedProject = self.addedProjects[path.row];
            targetViewController.project = selectedProject;

            }
        }
    if ([segue.destinationViewController isKindOfClass:[AddNewProjectViewController class]]) {
        AddNewProjectViewController *addProjectVC = segue.destinationViewController;
        addProjectVC.delegate = self;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - AddProjectViewController Delegate

-(void)didCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
    //    [self.navigationController popViewControllerAnimated:YES];
}

-(void)addProject:(Project *)project{
    
    [self.addedProjects addObject:project];
    
    NSMutableArray *projectsAsPriorityLists = [[[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_PROJECTS_KEY] mutableCopy];
    
    if (!projectsAsPriorityLists) projectsAsPriorityLists = [[NSMutableArray alloc] init];
    
    [projectsAsPriorityLists addObject:[self projectAsPropertyList:project]];
    [[NSUserDefaults standardUserDefaults] setObject:projectsAsPriorityLists forKey:ADDED_PROJECTS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    //    [self.navigationController popViewControllerAnimated:YES];
    [self.tableView reloadData];
}


#pragma mark - Helper methods

-(NSDictionary *) projectAsPropertyList:(Project *) project{
    
    NSDictionary *dictionary = @{INFO_PROJECT_NAME : project.projectName, INFO_CATEGORY1 : project.projectCategory1, INFO_SUB_CATEGORY1_1 : project.projectSubCategory11, INFO_CATEGORY2 : project.projectCategory2, INFO_SUB_CATEGORY2_1 : project.projectSubCategory21, INFO_CATEGORY3 : project.projectCategory3, INFO_SUB_CATEGORY3_1 : project.projectSubCategory31,  INFO_SUB_CATEGORY3_2 : project.projectSubCategory32, INFO_SUB_CATEGORY3_3 : project.projectSubCategory33,INFO_CATEGORY4 : project.projectCategory4, INFO_SUB_CATEGORY4_1 : project.projectSubCategory41, INFO_SUB_CATEGORY4_2 : project.projectSubCategory42, INFO_SUB_CATEGORY4_3 : project.projectSubCategory43, INFO_CATEGORY5 : project.projectCategory5, INFO_SUB_CATEGORY5_1 : project.projectSubCategory51, INFO_SUB_CATEGORY5_2 : project.projectSubCategory52, INFO_SUB_CATEGORY5_3 : project.projectSubCategory53, INFO_SUB_CATEGORY5_4 : project.projectSubCategory54, INFO_SUB_CATEGORY5_5 : project.projectSubCategory55, INFO_SUB_CATEGORY5_6 : project.projectSubCategory56, INFO_SUB_CATEGORY5_7 : project.projectSubCategory57, INFO_SUB_CATEGORY5_8 : project.projectSubCategory58, INFO_SUB_CATEGORY5_9 : project.projectSubCategory59, INFO_CATEGORY6 : project.projectCategory6, INFO_SUB_CATEGORY6_1 : project.projectSubCategory61, INFO_SUB_CATEGORY6_2 : project.projectSubCategory62, INFO_CATEGORY7 : project.projectCategory7, INFO_SUB_CATEGORY7_1 : project.projectSubCategory71, INFO_SUB_CATEGORY7_2 : project.projectSubCategory72, INFO_CATEGORY8 : project.projectCategory8, INFO_SUB_CATEGORY8_1 : project.projectSubCategory81};
    
    return dictionary;
}

-(Project *)projectForDictionary:(NSDictionary *)dictionary{
    Project *project = [[Project alloc] initWithData:dictionary];
    
    return project;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.addedProjects count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"ProjectCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Project *project = [self.addedProjects objectAtIndex:indexPath.row];
    cell.textLabel.text = project.projectName;
    return cell;
}




// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.addedProjects removeObjectAtIndex:indexPath.row];
        
        NSMutableArray *newSavedProjectsData = [[NSMutableArray alloc] init];
        for (Project *project in self.addedProjects){
            [newSavedProjectsData addObject:[self projectAsPropertyList:project]];
        }
        
        [[NSUserDefaults standardUserDefaults] setObject:newSavedProjectsData forKey:ADDED_PROJECTS_KEY];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];

        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
