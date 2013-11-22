//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Tim Spear on 14/06/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
- (IBAction)createNewItem:(id)sender;

- (IBAction)deleteSelectedItem:(id)sender;




@end
