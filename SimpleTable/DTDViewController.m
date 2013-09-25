//
//  DTDViewController.m
//  SimpleTable
//
//  Created by Tom Edgar on 9/25/13.
//  Copyright (c) 2013 Tom Edgar. All rights reserved.
//

#import "DTDViewController.h"

@interface DTDViewController ()

@end

@implementation DTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSArray *array = [[NSArray alloc] initWithObjects:@"Sleepy", @"Sneezy",
                      @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin",
                      @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili",
                      @"Oin", @"Gloin", @"Bifur", @"Bofur", @"Bombur", nil];
    
    self.dwarves = array;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - tableview data source

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   //NSLog(@"Called");
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:SimpleTableIdentifier];
    }
    
    //configure the cell
    cell.textLabel.text = [self.dwarves objectAtIndex:indexPath.row];
    
    UIImage *image = [UIImage imageNamed:@"star.png"];
    cell.imageView.image = image;
    
    UIImage *imageHighlight = [UIImage imageNamed:@"star2.png"];
    cell.imageView.highlightedImage = imageHighlight;
    
    if (indexPath.row  < 7) {
        cell.detailTextLabel.text = @"Mr. Disney";
    } else {
        cell.detailTextLabel.text = @"Mr. Tolkien";
    }
    
    
    return cell;
    
}


#pragma mark - tableview delegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"You picked %@", [self.dwarves objectAtIndex:indexPath.row]);
    NSLog(@"You picked %i",indexPath.row);
}



@end


































