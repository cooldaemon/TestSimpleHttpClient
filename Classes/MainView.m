//
//  MainView.m
//  TestSimpleHttpClient
//
//  Created by cooldaemon on 10/01/20.
//  Copyright 2010 Masahito Ikuta All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (void)sendHttpRequest {
	client = [[SimpleHttpClient alloc] initWithDelegate:self];
	
	[client setFilter:SimpleHttpClientFilterHTML forHost:@"d.hatena.ne.jp"];
	[client get:@"http://d.hatena.ne.jp/cooldaemon/20090911/1252637257" parameters:nil context:nil];	
}

- (void)writeText:(NSString *)view_text {
	textView.text = view_text;
}

- (void)simpleHttpClientOperationDidFinishLoading:(SimpleHttpClientOperation *)operation
									 filteredData:(id)data
{
	DDXMLDocument *html = (DDXMLDocument *)data;
	
	NSError *error = nil;
	NSArray *body = [html
					 nodesForXPath:@"id(\"days\")//div[@class=\"body\"]//h3/following-sibling::*|id(\"days\")//div[@class=\"body\" and not(.//h3)]"
					 error:&error
					 ];
	
	NSString *view_text;
	if (error != nil) {
		view_text = @"error";
	} else {
		view_text = [body componentsJoinedByString:@""];
	}
	
	[self
	    performSelectorOnMainThread:@selector(writeText:)
	                     withObject:view_text
	                  waitUntilDone:YES
	];
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        textView = [[UITextView alloc] initWithFrame:frame];
		textView.text = @"test!!";
		
		[self addSubview:textView];
		[self sendHttpRequest];
    }
    return self;
}


- (void)dealloc {
	[textView release];
	[client release];
    [super dealloc];
}


@end
