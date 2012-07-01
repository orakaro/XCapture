//
//  XCaptureAppDelegate.h
//  XCapture
//
//  Created by Minh Vu Nhat on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@class XCaptureViewController;

@interface XCaptureAppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) XCaptureViewController *viewController;

@end
