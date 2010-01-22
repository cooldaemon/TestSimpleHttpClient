//
//  MainView.h
//  TestSimpleHttpClient
//
//  Created by cooldaemon on 10/01/20.
//  Copyright 2010 Masahito Ikuta All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleHttpClient.h"

@interface MainView : UIView {
	UITextView       *textView;
	SimpleHttpClient *client;
}

- (void)writeText:(NSString *)view_text;

@end
