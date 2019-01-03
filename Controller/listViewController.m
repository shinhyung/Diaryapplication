//
//  listViewController.m
//  Diary
//
//  Created by ios2018_12 on 2018. 12. 24..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import "listViewController.h"

@interface listViewController ()

@end

@implementation listViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    NSString * string =[self.newdictionary objectForKey:@"numberthree"];
    self.text.text = string;
    NSNumber * image = [self.newdictionary objectForKey:@"numberone"];
    
    NSDate *date = [self.newdictionary objectForKey:@"numbertwo"];
    NSDateFormatter* df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"MM/dd/yyyy"];
    NSString *result = [df stringFromDate:date];
    self.title = result;
    
    switch (image.intValue) {
        case 0:
            self.imageView.image = [UIImage imageNamed:@"happy.png"];
            break;
            
        case 1:
            self.imageView.image = [UIImage imageNamed:@"sad.png"];
          
            break;
            
        case 2:
            self.imageView.image = [UIImage imageNamed:@"surprised.png"];
           
            break;
            
        case 3:
            self.imageView.image = [UIImage imageNamed:@"sad-2.png"];
          
            break;
            
        case 4:
            self.imageView.image = [UIImage imageNamed:@"nervous.png"];
          
            break;
            
        default:
            break;
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
