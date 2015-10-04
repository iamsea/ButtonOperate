//
//  ViewController.h
//  ButtonOperate
//
//  Created by sea on 15/10/4.
//  Copyright © 2015年 sea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *image;

- (IBAction)move:(UIButton *)button;
- (IBAction)zoom:(UIButton *)button;
- (IBAction)rotating:(UIButton *)button;

@end

