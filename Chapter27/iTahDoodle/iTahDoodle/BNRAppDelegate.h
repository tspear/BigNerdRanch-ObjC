//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Tim Spear on 04/06/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that we wil use to get a path
// to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder
<UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;


@property (strong, nonatomic) UIWindow *window;

@end
