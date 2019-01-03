//
//  HappinessViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 11. 13..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "HappinessViewController.h"

@interface HappinessViewController()



@end

@implementation HappinessViewController

-(void)viewDidLoad{
    [super viewDidLoad];

    [self.happybutton setSelected:YES];
    [self.happybutton setSelected:NO];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *_number = [defaults objectForKey:@"face"];

    if(_number && _number.integerValue < 5) {
        [self settingHappiness:_number.integerValue];
    }
   
}

- (void)settingHappiness:(NSUInteger)faceInteger {
    
  
    [self.happybutton setEnabled:YES forSegmentAtIndex:faceInteger];
    
    [self happybuttonTouched:self.happybutton];
    
}

-(IBAction)happybuttonTouched:(UISegmentedControl *)sender{

    switch (sender.selectedSegmentIndex) {
        case 0:
            self.webimage.image = [UIImage imageNamed:@"happy.png"];
            [self.happybutton setSelected:YES];
            break;
        case 1:
            self.webimage.image = [UIImage imageNamed:@"sad.png"];
            [self.happybutton setSelected:YES];
            break;
            
        case 2:
            self.webimage.image = [UIImage imageNamed:@"surprised.png"];
            [self.happybutton setSelected:YES];
            break;
        
        case 3:
            self.webimage.image = [UIImage imageNamed:@"sad-2.png"];
            [self.happybutton setSelected:YES];
            break;
            
        case 4:
            self.webimage.image = [UIImage imageNamed:@"nervous.png"];
            [self.happybutton setSelected:YES];
            break;
        
        default:
            break;
    }

}
-(IBAction)faceStore:(id)sender{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *number = [NSNumber numberWithUnsignedInteger:self.happybutton.selectedSegmentIndex];
    [defaults setValue:number forKey:@"face"];
    [defaults synchronize];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
