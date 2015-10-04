//
//  ViewController.m
//  ButtonOperate
//
//  Created by sea on 15/10/4.
//  Copyright © 2015年 sea. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    moveUp = 1,
    moveDown = 2,
    moveLeft= 3,
    moveRight = 4,
    contrarotate = 5,
    clockwise = 6,
    amplification = 7,
    thrink = 8,
} oprate;

#define kMovingDelta 20
#define kZoomDelta 20

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn = [[UIButton alloc] init];
//    btn.frame = CGRectMake(100, 200, 100, 100);
//    [btn setTitle:@"click me" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    UIImage *image_2 = [UIImage imageNamed:@"01"];
//    [btn setBackgroundImage:image_2 forState:UIControlStateNormal];
//    [btn setTitle:@" " forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    [btn setBackgroundImage:[UIImage imageNamed:@"02"] forState:UIControlStateHighlighted];
//    [self.view addSubview:btn];
//    
//    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

//- (void)click:(id)sender {
//    NSLog(@"hello world %@", sender);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)move:(UIButton *)button {
    
//    CGRect rect = self.image.frame;
//    switch (button.tag) {
//        case moveUp:
//            rect.origin.y -= kMovingDelta;
//            break;
//        case moveDown:
//            rect.origin.y += kMovingDelta;
//            break;
//        case moveLeft:
//            rect.origin.x -= kMovingDelta;
//            break;
//        case moveRight:
//            rect.origin.x += kMovingDelta;
//            break;
//    }
//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5];
//    
//    self.image.frame = rect;
//    
//    [UIView commitAnimations];
    CGAffineTransform transform;
    switch (button.tag) {
        case moveUp:
            transform = CGAffineTransformTranslate(self.image.transform, 0, -kMovingDelta);
            break;
        case moveDown:
            transform = CGAffineTransformTranslate(self.image.transform, 0, kMovingDelta);
            break;
        case moveLeft:
            transform = CGAffineTransformTranslate(self.image.transform, -kMovingDelta, 0);
            break;
        case moveRight:
            transform = CGAffineTransformTranslate(self.image.transform, kMovingDelta, 0);
    }
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.image.transform = transform;
    [UIView commitAnimations];
    
}

- (IBAction)zoom:(UIButton *)button {
    
//    CGRect rect = self.image.bounds;
//    if (button.tag == 7) {
//        rect.size.width += kZoomDelta;
//        rect.size.height += kZoomDelta;
//    }
//    else {
//        rect.size.width -= kZoomDelta;
//        rect.size.height -= kZoomDelta;
//    }
//    
//    self.image.alpha = 0;
//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5];
//    
//    self.image.bounds = rect;
//    self.image.alpha = 1;
//    
//    [UIView commitAnimations];
    CGAffineTransform transform;
    if (button.tag == 7) {
        transform = CGAffineTransformScale(self.image.transform, 1.2, 1.2);
    }
    else {
        transform = CGAffineTransformScale(self.image.transform, 0.8, 0.8);
    }
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.image.transform = transform;
    [UIView commitAnimations];
    
}

- (IBAction)rotating:(UIButton *)button {
    CGAffineTransform transform;
    if (button.tag == 5) {
        transform = CGAffineTransformRotate(self.image.transform, -M_PI_4);
    }
    else {
        transform = CGAffineTransformRotate(self.image.transform, M_PI_4);
    }
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.image.transform = transform;
    [UIView commitAnimations];
}
@end
