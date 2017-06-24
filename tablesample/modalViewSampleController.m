//
//  modalViewSampleController.m
//  tablesample
//
//  Created by 影山 大輔 on 2017/06/24.
//  Copyright © 2017年 tokonatsutan. All rights reserved.
//

#import "modalViewSampleController.h"

@interface modalViewSampleController ()
- (IBAction)closeTapped:(id)sender;

@end

@implementation modalViewSampleController
- (id)initWithNibName:(NSString*)nibName bundle:(NSBundle*)bundle
{
    self = [super initWithNibName:nibName bundle:bundle];
    if (!self) {
        return nil;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.table.delegate = self;
    self.table.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"testtest";
    
    return cell;
}

- (IBAction)closeTapped:(id)sender {
    [UIView animateWithDuration:0.2f
                     animations:^{
                         self.view.alpha = 0.2f;
                     }
                     completion:^(BOOL finished){
                         [self.view removeFromSuperview];
                         self.view.alpha = 1.f;
                     }];
}

@end
