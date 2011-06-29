//
//  TomatOSXAppDelegate.h
//  TomatOSX
//
//  Created by ji on 27/06/11.
//  Copyright 2011 none. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#define TOMATO_DELAY 600

@interface TomatOSXAppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
	NSImage *redTomato;
	NSImage *greenTomato;
	NSImage *greyTomato;
}

@property (assign) NSImage *redTomato;
@property (assign) NSImage *greenTomato;
@property (assign) NSImage *greyTomato;

void click();
void doubleClick();

void workDone();

@end
