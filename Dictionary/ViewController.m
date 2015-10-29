//
//  ViewController.m
//  Dictionary
//
//  Created by fpmi on 29.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "Helper.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;
@synthesize tableView;

NSArray *keys;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    keys = [[NSArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addWordToDic:(id)sender {
    NSDate * now = [NSDate date];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"HH:mm:ss"];
    NSString *newDateString = [outputFormatter stringFromDate:now];
    NSString *text = textView.text;
    NSLog(@"%@ add %@", newDateString, text);
    
    textView.text = @"";
    Helper.instance.dict[newDateString] = text;
}


- (IBAction)printDict:(id)sender {
    tableView.hidden = false;
    keys = [Helper.instance.dict allKeys];
    [tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [keys count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    cell.textLabel.text = [Helper.instance.dict valueForKey: keys[indexPath.row]];
    cell.detailTextLabel.text = keys[indexPath.row];
    
    return cell;
    
}

@end
