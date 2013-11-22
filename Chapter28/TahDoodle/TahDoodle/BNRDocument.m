//
//  BNRDocument.m
//  TahDoodle
//
//  Created by Tim Spear on 14/06/2013.
//  Copyright (c) 2013 Tim Spear. All rights reserved.
//

#import "BNRDocument.h"


#pragma mark - NSDocument overrides

@implementation BNRDocument



- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}


- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName
                 error:(NSError **)outError
{

    // This method is called when out document is being saved
    // We are expected to hand the called an NSData object wrapping our data
    // so that it can be written to disk
    
    // if theres no array we'll write out an empty array for now
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Pack our todoItems array into an NSData object
    NSData *data = [NSPropertyListSerialization
                    dataWithPropertyList:todoItems
                    format:NSPropertyListXMLFormat_v1_0
                    options:0
                    error:outError];
    
    // return our newly packed NSData object
    return data;
}


- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // This method is called when a document is being loaded
    // We are handed an NSData object and expected to pull our data out of it
    
    // Extract our todoItems
    todoItems = [NSPropertyListSerialization
                 propertyListWithData:data
                 options:NSPropertyListMutableContainers
                 format:NULL
                 error:outError];
    
    // return success or failure depending on success of the above call
    return (todoItems != nil);
}


#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    // If there's no array yet, go ahead and create one to store our new task
    if(!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New Item"];
    
    // -reloadData tells the table view to refesh and ask its datasource
    // (which happens to be this BNRDocument object in this case)
    // for new data to display
    [itemTableView reloadData];
    
    // -updateChangeCount: tells the application whether or not the document has
    // unsaved changes. NSChangeDone flags the document as unsaved.
    [self updateChangeCount:NSChangeDone];
}

#pragma mark Data Source Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    // This table view is meant to display the todoItems,
    // so the number of entries in the table view will be the same
    // as the number of objects in the array.
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView
            objectValueForTableColumn:(NSTableColumn *)tableColumn
                                row:(NSInteger)row
{
    // Return the item from todoItems that corresponds to the cell
    // that the tableview wants to display
    return [todoItems objectAtIndex:row];
}

-(void)tableView:(NSTableView *)tableView
  setObjectValue:(id)object
  forTableColumn:(NSTableColumn *)tableColumn
             row:(NSInteger)row
{
    // When the user changes a to-do item on the table view,
    // update the todoItems array
    [todoItems replaceObjectAtIndex:row withObject:object];
    // And then flag the document as having unsaved changes.
    [self updateChangeCount:NSChangeDone];
}

@end
