//
//  XCaptureViewController.h
//  XCapture
//
//  Created by Minh Vu Nhat on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCaptureViewController : UIViewController<UIWebViewDelegate>

@property(nonatomic,retain)IBOutlet UIWebView *webView;

-(IBAction)captureScreen:(id)sender;

@end
