//
//  WriteViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 11. 10..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "WriteViewController.h"
#import "HappinessViewController.h"
#import "BackGroundViewController.h"

@interface WriteViewController()
@property (weak,nonatomic)IBOutlet UITextView *body;
@property (weak,nonatomic)IBOutlet UIButton *redbutton;
@property (weak,nonatomic) IBOutlet UIButton *bluebutton;
@property (weak,nonatomic)IBOutlet UIButton *yellowbutton;
@property (weak,nonatomic)IBOutlet UIButton *pinkbutton;
@property (weak,nonatomic)IBOutlet UIButton *brownbutton;
@property (weak,nonatomic)IBOutlet UIButton *unoutlineButton;
@property (weak,nonatomic)IBOutlet UIButton *outlineButton;

@end

@implementation WriteViewController

-(IBAction)changeBodySelectionColorToMatchBackgroundColor:(UIButton*)sender
{
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}
-(IBAction)outlineSelection:(id)sender
{
    //여러개의 Attribute를 추가하는 함수 , 선택된 글씨의 굵기 설정을 변경
    [self.body.textStorage addAttributes:@
     {
     NSStrokeWidthAttributeName:@-4,
         NSStrokeWidthAttributeName:[UIColor blackColor]}
                                   range:self.body.selectedRange];
     
}
-(IBAction)unoutlineSelection:(id)sender
{
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                   range:self.body.selectedRange];
    
}
-(void)viewDidLoad{
    [super viewDidLoad];
    [self.redbutton.layer setBorderWidth:2.0f];
    [self.bluebutton.layer setBorderWidth:2.0f];
    [self.yellowbutton.layer setBorderWidth:2.0f];
    [self.pinkbutton.layer setBorderWidth:2.0f];
    [self.brownbutton.layer setBorderWidth:2.0f];
    [self.body.layer setBorderWidth:2.0f];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self usePreferredFonts];
}
-(void)usePreferredFonts
{
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  
}


-(IBAction)textFieldAction:(id)sender{
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    NSMutableDictionary *diaryDictionary = [[NSMutableDictionary alloc]init];
    NSNumber * facenumber =  [defaults objectForKey:@"face"];
    NSDate *date = [defaults objectForKey:@"Store"];
    NSString* text = self.body.text;
    
    [diaryDictionary setObject:facenumber forKey:@"numberone"];
    [diaryDictionary setObject:date forKey:@"numbertwo"];
    [diaryDictionary setObject:text forKey:@"numberthree"];
    
    
    NSArray *array = [defaults objectForKey:@"diary"];
    if(array == nil){
        
    }
    
    NSMutableArray *newarray = [[NSMutableArray alloc]initWithArray:array];
    [newarray addObject:diaryDictionary];
    
    [defaults setObject:newarray forKey:@"diary"];
    [defaults synchronize];
  //  [self.navigationController popViewControllerAnimated:YES];
    
    
    
}
@end
