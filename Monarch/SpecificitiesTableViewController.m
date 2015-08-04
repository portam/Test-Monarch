//
//  SpecificitiesTableViewController.m
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "SpecificitiesTableViewController.h"
#import "DetailsViewController.h"
#import "Specificity.h"
#import "CategoriesTableViewController.h"

@interface SpecificitiesTableViewController ()

@end

@implementation SpecificitiesTableViewController
#define ADDED_SPECIFCITIES_KEY @"Added Specificities Array"

#pragma mark - Lazy instantiation

-(NSMutableArray *)addedSpecificities{
    if (!_addedSpecificities) {
        _addedSpecificities = [[NSMutableArray alloc] init];
    }
    return _addedSpecificities;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSArray *specificityAsPropertyLists = [[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_SPECIFCITIES_KEY];
    for (NSDictionary *dictionary in specificityAsPropertyLists) {
        Specificity *specificity = [self specificityForDictionary:dictionary];
        [self.addedSpecificities addObject:specificity];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[NSIndexPath class]]) {
        if([segue.destinationViewController isKindOfClass:[DetailsViewController class]]){
            DetailsViewController *targetViewController = segue.destinationViewController;
            NSIndexPath *path = sender;
            Specificity *selectedSpecificity;
            selectedSpecificity = self.addedSpecificities[path.row];
            targetViewController.specificity = selectedSpecificity;
            
        }
    }
    if ([segue.destinationViewController isKindOfClass:[AddNewSpecificityViewController class]]) {
        AddNewSpecificityViewController *addSpecificityVC = segue.destinationViewController;
        addSpecificityVC.delegate = self;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - AddNewSpecificityViewController Delegate

-(void)didCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
    //    [self.navigationController popViewControllerAnimated:YES];
}

-(void)addSpecificity:(Specificity *)specificity{
    
    [self.addedSpecificities addObject:specificity];
    
    NSMutableArray *specificitiesAsPriorityLists = [[[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_SPECIFCITIES_KEY] mutableCopy];
    
    if (!specificitiesAsPriorityLists) specificitiesAsPriorityLists = [[NSMutableArray alloc] init];
    
    [specificitiesAsPriorityLists addObject:[self specificityAsPropertyList:specificity]];
    [[NSUserDefaults standardUserDefaults] setObject:specificitiesAsPriorityLists forKey:ADDED_SPECIFCITIES_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    //    [self.navigationController popViewControllerAnimated:YES];
    [self.tableView reloadData];
}


#pragma mark - Helper methods

-(NSDictionary *) specificityAsPropertyList:(Specificity *) specificity{
    
    NSDictionary *dictionary = @{SPECIFICITY_TITLE : specificity.specificityTitle, SPECIFICITY_DESCRIPTION : specificity.specificityDescription, SPECIFICITY_RECOMMENDATION : specificity.specificityRecommmendation};
    
    return dictionary;
}

-(Specificity *)specificityForDictionary:(NSDictionary *)dictionary{
    Specificity *specificity = [[Specificity alloc] initWithData:dictionary andImage:[UIImage imageNamed:@"Monarch1.jpg"]];
    
    return specificity;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.addedSpecificities count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"SpecificityCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Specificity *specificity = [self.addedSpecificities objectAtIndex:indexPath.row];
    cell.textLabel.text = specificity.specificityTitle;
    cell.imageView.image = specificity.specificityImage;
    return cell;
}



//// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}
//
//
//
//// Override to support editing the table view.
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Delete the row from the data source
//        [self.addedSpecificities removeObjectAtIndex:indexPath.row];
//        
//        NSMutableArray *newSavedSpecificitiesData = [[NSMutableArray alloc] init];
//        for (Specificity *specificity in self.addedSpecificities){
//            [newSavedSpecificitiesData addObject:[self specificityAsPropertyList:specificity]];
//        }
//        
//        [[NSUserDefaults standardUserDefaults] setObject:newSavedSpecificitiesData forKey:ADDED_SPECIFCITIES_KEY];
//        [[NSUserDefaults standardUserDefaults] synchronize];
//        
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//        
//        
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//    }
//}


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
