//
//  TestSimpleHttpClientAppDelegate.h
//  TestSimpleHttpClient
//
//  Created by cooldaemon on 10/01/20.
//  Copyright 2010 Masahito Ikuta All rights reserved.
//

#import "MainView.h";

@interface TestSimpleHttpClientAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;	
	MainView *view;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

