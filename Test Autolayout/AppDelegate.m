//
//  AppDelegate.m
//  Test Autolayout
//
//  Created by Chuck Hartman on 6/21/13.
//  Copyright (c) 2013 Chuck Hartman. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
{
    IBOutlet NSView *mainView;
    
    IBOutlet NSSplitView *outerSplitView;
    IBOutlet NSSplitView *innerSplitView;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

@end
