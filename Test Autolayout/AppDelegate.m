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
    IBOutlet NSSplitView *outerSplitView;
    IBOutlet NSSplitView *innerSplitView;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    //    [mainView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
//    innerSplitView.delegate = self;
//    outerSplitView.delegate = self;
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

//- (CGFloat)splitView:(NSSplitView *)splitView constrainMinCoordinate:(CGFloat)proposedCoordinate ofSubviewAt:(NSInteger)index
//{
//    if ([splitView isEqualTo:outerSplitView])
//    {
//        NSLog(@"%@:%ld minCoord:%0f", splitView.identifier, (long)index, proposedCoordinate);
//        return proposedCoordinate + 100.0;
//    }
////    else if ([splitView isEqualTo:innerSplitView])
////    {
////        NSLog(@"%@:%ld minCoord:%0f", splitView.identifier, (long)index, proposedCoordinate);
////        return proposedCoordinate + 50.0;
////    }
//    return proposedCoordinate;
//}

//- (CGFloat)splitView:(NSSplitView *)splitView constrainMaxCoordinate:(CGFloat)proposedCoordinate ofSubviewAt:(NSInteger)index
//{
//    if ([splitView isEqualTo:outerSplitView])
//    {
//        NSLog(@"%@:%ld maxCoord:%0f", splitView.identifier, (long)index, proposedCoordinate);
//        return proposedCoordinate - 200.0;
//    }
////    else if ([splitView isEqualTo:innerSplitView])
////    {
////        NSLog(@"%@:%ld maxCoord:%0f", splitView.identifier, (long)index, proposedCoordinate);
////        return proposedCoordinate - 50.0;
////    }
//    return proposedCoordinate;
//}

@end
