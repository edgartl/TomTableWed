//
//  DTDViewController.h
//  SimpleTable
//
//  Created by Tom Edgar on 9/25/13.
//  Copyright (c) 2013 Tom Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DTDViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *dwarves;

@end
