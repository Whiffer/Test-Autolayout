Test-Autolayout
===============
I have the following implemented with springs and struts along with several NSSplitViewDelegate resizing and constraint methods and it all works as desired. I am now trying to adopt autolayout for this same scenario by replacing all of the setFrame messages and NSSplitViewDelegate methods with proper autolayout constraints.

My main window's view contains a vertical split view (I call OuterSplitter) with the top, bottom, left and right leading and trailing space constraints set to zero for OuterSplitter to its superview.

The right pane of OuterSplitter contains (among a few other things) another vertical split view (I call InnerSplitter) which also has the top, bottom, left and right leading and trailing space constraints set to zero for InnerSplitter to its superview (i.e. OuterSplitter's right pane).

I have set nominal minimum width constraints for OuterSplitter's left pane, and also for both the left and right panes of InnerSplitter.

When the main window is being resized, the desired behavior is for all (or most) of the expansion and contraction to be applied to InnerSplitter's left pane, unless one of the minimum width constraints takes effect. Therefore, I have set the split view Holding Priority for OuterSplitter's left pane to 260 (highest) and 250 for the right pane. Also, the Holding Priority for InnerSplitter's left pane to 245 (lowest) and 255 for the right pane.

I have watched the video for session 232 from WWDC 2012 and thought I was on the right track. My autolayout constraints work mostly as desired, but there is one very strange behavior that does not occur with my springs and struts version.

If the split bar of the InnerSplitter is as far right as it will go (InnerSplitter right pane is at its minimum size) AND the OuterSplitter split bar is NOT as far left as it can go, then if you try to drag InnerSplitter's splitter bar farther to the right, then unexpectedly the OuterSplitter's split bar moves to the left causing the InnerSplitter's Left pane to grow and OuterSplitter's left pane to shrink. My expectation is that no resizing should take place in that case.

It is possible to stop the OuterSplitter's split bar from moving when tugging on the InnerSplitter's split bar that is pinned to the right? If so, what constraints should be added? Or are some of the NSSplitViewDelegate methods still required? Thanks.

BTW, I'm using Xcode 4.6.3 and targeting OSX 10.8.
