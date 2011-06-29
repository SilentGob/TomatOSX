//
//  TomatOSXAppDelegate.m
//  TomatOSX
//
//  Created by ji on 27/06/11.
//  Copyright 2011 none. All rights reserved.
//

#import "TomatOSXAppDelegate.h"

@implementation TomatOSXAppDelegate

@synthesize redTomato;
@synthesize greenTomato;
@synthesize greyTomato;


- (void)click{
	if([statusItem image] == greyTomato){
		[statusItem setImage:redTomato];
		[self performSelector:@selector(workDone) withObject:nil afterDelay:TOMATO_DELAY];
//		NSLog(@"GOOOOOO!!!");
	}
}

- (void)doubleClick{
	[statusItem setImage:greyTomato];
	[NSObject cancelPreviousPerformRequestsWithTarget:self];
//	NSLog(@"RESET!!!");
}

- (void)workDone{
	[statusItem setImage:greenTomato];
//	NSLog(@"GOOD JOB!!!");
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[statusItem setAction:@selector(click)];
	[statusItem setDoubleAction:@selector(doubleClick)];
}

- (void)awakeFromNib{
	statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
	
	NSBundle *bundle = [NSBundle mainBundle];
	NSSize size = NSMakeSize(18.0, 15.0);
	greyTomato = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"tomato_grey" ofType:@"png"]];
	greyTomato.size = size;
	greenTomato = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"tomato_green" ofType:@"png"]];
	greenTomato.size = size;
	redTomato = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"tomato_red" ofType:@"png"]];
	redTomato.size = size;
	
	[statusItem setImage:greyTomato];
}
@end