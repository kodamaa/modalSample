//
//  modalViewSample.h
//  tablesample
//
//  Created by 影山 大輔 on 2017/06/24.
//  Copyright © 2017年 tokonatsutan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface modalViewSampleController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITableView *table;
@end
