//
//  tilesAppDelegate.h
//  tiles
//
//  Created by Patrick Zearfoss on 7/5/11.
//  Copyright 2011 Mindgrub Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class tilesViewController;

@interface tilesAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet tilesViewController *viewController;

@end
