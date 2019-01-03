//
//  HappinessViewController.h
//  Diary
//
//  Created by ios2018_12 on 2018. 11. 13..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HappinessViewController : UIViewController


@property (nonatomic,assign) IBOutlet UIImageView *webimage;

@property (weak)IBOutlet UISegmentedControl *happybutton;
-(IBAction)happybuttonTouched:(UISegmentedControl*)sender;



@end
