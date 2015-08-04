//
//  CategoriesTableViewController.m
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "CategoriesTableViewController.h"

@interface CategoriesTableViewController ()

@end

@implementation CategoriesTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 8;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
        if (section <= 1) {
            return 1;
        }else if (section >= 2 && section <= 3){
            return 3;
        }else if (section == 4){
            return 9;
        }else if (section >= 5 && section <= 6){
            return 2;
        }else{
            return 1;
        }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"CategoryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section == 0) {
        cell.textLabel.text = self.project.projectSubCategory11;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
    }else if (indexPath.section == 1){
        cell.textLabel.text = self.project.projectSubCategory21;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            cell.textLabel.text = self.project.projectSubCategory31;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 1){
            cell.textLabel.text = self.project.projectSubCategory32;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 2){
            cell.textLabel.text = self.project.projectSubCategory33;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }
    }else if (indexPath.section == 3){
        if (indexPath.row == 0) {
            cell.textLabel.text = self.project.projectSubCategory41;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 1){
            cell.textLabel.text = self.project.projectSubCategory42;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 2){
            cell.textLabel.text = self.project.projectSubCategory43;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }
    }else if (indexPath.section == 4){
        if (indexPath.row == 0) {
            cell.textLabel.text = self.project.projectSubCategory51;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 1){
            cell.textLabel.text = self.project.projectSubCategory52;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 2){
            cell.textLabel.text = self.project.projectSubCategory53;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 3){
            cell.textLabel.text = self.project.projectSubCategory54;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 4){
            cell.textLabel.text = self.project.projectSubCategory55;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 5){
            cell.textLabel.text = self.project.projectSubCategory56;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 6){
            cell.textLabel.text = self.project.projectSubCategory57;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 7){
            cell.textLabel.text = self.project.projectSubCategory58;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 8){
            cell.textLabel.text = self.project.projectSubCategory59;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }
    }else if (indexPath.section == 5){
        if (indexPath.row == 0) {
            cell.textLabel.text = self.project.projectSubCategory61;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 1){
            cell.textLabel.text = self.project.projectSubCategory62;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }
    }else if (indexPath.section == 5){
        if (indexPath.row == 0) {
            cell.textLabel.text = self.project.projectSubCategory71;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }else if (indexPath.row == 1){
            cell.textLabel.text = self.project.projectSubCategory72;
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
        }
    }else{
        cell.textLabel.text = self.project.projectSubCategory81;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", 0];
    }

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return self.project.projectCategory1;
    }else if (section == 1){
        return self.project.projectCategory2;
    }else if (section == 2){
        return self.project.projectCategory3;
    }else if (section == 3){
        return self.project.projectCategory4;
    }else if (section == 4){
        return self.project.projectCategory5;
    }else if (section == 5){
        return self.project.projectCategory6;
    }else if (section == 6){
        return self.project.projectCategory7;
    }else{
        return self.project.projectCategory8;
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/



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
