//
//  XCaptureViewController.m
//  XCapture
//
//  Created by Minh Vu Nhat on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "XCaptureViewController.h"
#import "XCaptureAppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@implementation XCaptureViewController

@synthesize webView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Location Manager
    if ([CLLocationManager locationServicesEnabled]) {
        XCaptureAppDelegate *appDelegate = (XCaptureAppDelegate *)[UIApplication sharedApplication].delegate;
        CLLocation *currentLocation=appDelegate.locationManager.location;
        //Whatever 
        //Stupid comment again
    }
	// Do any additional setup after loading the view, typically from a nib.
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.appcoda.com/"]]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)captureScreen:(id)sender
{
    UIGraphicsBeginImageContext(webView.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
}

@end
