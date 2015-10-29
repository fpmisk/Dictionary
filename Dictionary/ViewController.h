//
//  ViewController.h
//  Dictionary
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

