//
//  TestSimpleHttpClientAppDelegate.m
//  TestSimpleHttpClient
//
//  Created by cooldaemon on 10/01/20.
//  Copyright 2010 Masahito Ikuta All rights reserved.
//

#import "TestSimpleHttpClientAppDelegate.h"


@implementation TestSimpleHttpClientAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	CGRect screenBounds = [[UIScreen mainScreen] applicationFrame];
	CGRect viewRect     = screenBounds;
	viewRect.origin.x = viewRect.origin.y = 0;
	
	window = [[UIWindow alloc] initWithFrame:screenBounds];
	view   = [[MainView alloc] initWithFrame:viewRect];
	
	[window addSubview:view];
	[window makeKeyAndVisible];
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[view release];
	[window release];
	[super dealloc];
}


@end

