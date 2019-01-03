//
//  BackGroundViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 11. 10..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "BackGroundViewController.h"
#import "WriteViewController.h"

@interface BackGroundViewController()
@property (weak,nonatomic)IBOutlet UIButton *Redbutton;
@property (weak,nonatomic) IBOutlet UIButton *Bluebutton;
@property (weak,nonatomic)IBOutlet UIButton *Blackbutton;
@property (weak,nonatomic)IBOutlet UIButton *Yellowbutton;
@property (weak,nonatomic)IBOutlet UIButton *Purplebutton;

@end

@implementation BackGroundViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
        if([segue.identifier isEqualToString:@"RED"]){
        WriteViewController* writeView = (WriteViewController*)segue.destinationViewController;
        [writeView.view setBackgroundColor:[UIColor redColor]];
        }
        if([segue.identifier isEqualToString:@"YELLOW"]){
            WriteViewController* writeView = (WriteViewController*)segue.destinationViewController;
            [writeView.view setBackgroundColor:[UIColor yellowColor]];
        }
        if([segue.identifier isEqualToString:@"GRAY"]){
            WriteViewController* writeView = (WriteViewController*)segue.destinationViewController;
            [writeView.view setBackgroundColor:[UIColor grayColor]];
        }
        if([segue.identifier isEqualToString:@"PURPLE"]){
            WriteViewController* writeView = (WriteViewController*)segue.destinationViewController;
            [writeView.view setBackgroundColor:[UIColor purpleColor]];
        }
        if([segue.identifier isEqualToString:@"BLUE"]){
            WriteViewController* writeView = (WriteViewController*)segue.destinationViewController;
            [writeView.view setBackgroundColor:[UIColor blueColor]];
        }
    }


@end
