//
//  listViewController.h
//  Diary
//
//  Created by ios2018_12 on 2018. 12. 24..
//  Copyright © 2018년 ios2018_12. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface listViewController : UIViewController
@property (nonatomic,strong)NSDictionary *newdictionary;
@property (nonatomic,assign)IBOutlet UITextView *text;
@property (nonatomic,assign)IBOutlet UIImageView *imageView;
@end
