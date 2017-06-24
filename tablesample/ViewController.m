//
//  ViewController.m
//  tablesample
//
//  Created by 影山 大輔 on 2017/06/24.
//  Copyright © 2017年 tokonatsutan. All rights reserved.
//

#import "ViewController.h"
#import "modalViewSampleController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
- (IBAction)showDialog:(id)sender;
@property(nonatomic, strong) modalViewSampleController *modalController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modalController = [[modalViewSampleController alloc] init];
    [self addChildViewController:self.modalController];
    [self.modalController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDialog:(id)sender {
    [self.view addSubview:self.modalController.view];
    
    CGPoint center = self.modalController.contentView.center;
    UIView* view = self.modalController.contentView;
    
    view.transform = CGAffineTransformScale(CGAffineTransformIdentity,0.5f,0.5f);
    view.center = center;
    view.layer.cornerRadius = 8;
    view.layer.masksToBounds = YES;
    
    [UIView animateWithDuration:0.2
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         view.transform = CGAffineTransformIdentity;
                         view.center = center;
                     }
                     completion:nil];
}

@end
