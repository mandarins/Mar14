//
//  Mar14AppDelegate.h
//  Mar14
//
//  Created by Salvatore Lentini on 3/11/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>	//needed for MPMoviePlayerController
#import <AudioToolbox/AudioToolbox.h>
@class View;

@interface Mar14AppDelegate : UIResponder <UIApplicationDelegate> {
	MPMoviePlayerController *controller;
	View *view;
	UIWindow *_window;
    UIDevice *device;
    SystemSoundID sid;
}
@property (strong, nonatomic) UIWindow *window;

@end
