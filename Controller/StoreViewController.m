//
//  StoreViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 11. 10..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "StoreViewController.h"
#import "listViewController.h"

@interface StoreViewController()

@property (nonatomic,strong)NSArray *array;
@property (nonatomic,strong)NSDictionary *selectedDictionary;
@property (weak)IBOutlet UITableView *table;

@end


@implementation StoreViewController

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"diary"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"diary"];
    }
    NSDictionary *dictionary = [self.array objectAtIndex:indexPath.row];
    NSDate *date = [dictionary objectForKey:@"numbertwo"];
    NSDateFormatter* df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"MM/dd/yyyy"];
    NSString *result = [df stringFromDate:date];
    [cell.textLabel setText:result];

    
    return cell;
    
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.array.count;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.selectedDictionary = [self.array objectAtIndex:indexPath.row];
    
    listViewController *newlist = [self.storyboard instantiateViewControllerWithIdentifier:@"listboard"];
    newlist.newdictionary = self.selectedDictionary;
    [self.navigationController pushViewController:newlist animated:YES];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.array = [defaults objectForKey:@"diary"];
    
}




@end
