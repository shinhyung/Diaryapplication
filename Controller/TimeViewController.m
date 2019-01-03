//
//  TimeViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 12. 23..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "TimeViewController.h"
@interface TimeViewController()

@property (weak,nonatomic)IBOutlet UIDatePicker *DATE;

@end

@implementation TimeViewController
-(void)viewDidLoad{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDate *date = [defaults objectForKey:@"Store"];
    if(date)
        [self.DATE setDate:date];
    
}
-(IBAction)storeTime:(id)sender{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDate *store = self.DATE.date;
    [defaults setValue:store forKey:@"Store"];
    [defaults synchronize];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
