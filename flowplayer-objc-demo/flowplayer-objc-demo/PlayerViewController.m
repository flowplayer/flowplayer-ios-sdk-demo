//
//  PlayerViewController.m
//  flowplayer-objc-demo
//
//  Created by Georgios Savvidis on 02.10.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController () {}
@end

@implementation PlayerViewController

- (void)viewDidAppear:(BOOL)animated {
    _flowplayerViewController = [[FPFlowplayerViewController alloc] init];
    
    [_containerView addSubview:_flowplayerViewController.view];
    
    // Add the delegate after the flowplayerViewController has been added to the container.
    [_flowplayerViewController addPlayerDelegate:self];
    
    if([self flowplayerMedia]) {
        [_flowplayerViewController prepareWithFlowplayerMedia:[self flowplayerMedia] autoStart:true];
    } else if ([self externalMedia]) {
        [_flowplayerViewController prepareWithExternalMedia:[self externalMedia] autoStart:true];
    }
}

- (void)onAdBreakCompleteWithEvent:(FPAdBreakCompleteEvent * _Nonnull)event {
    printf("OnAdBreakComplete");
}

- (void)onAdBreakStartWithEvent:(FPAdBreakStartEvent * _Nonnull)event {
    printf("OnAdBreakStart");
}

- (void)onAdClickWithEvent:(FPAdClickEvent * _Nonnull)event {
    printf("OnAdClick");
}

- (void)onAdCompleteWithEvent:(FPAdCompleteEvent * _Nonnull)event {
    printf("OnAdComplete");
}

- (void)onAdErrorWithEvent:(FPAdErrorEvent * _Nonnull)event {
    printf("OnAdError");
}

- (void)onAdPauseWithEvent:(FPAdPauseEvent * _Nonnull)event {
    printf("OnAdPause");
}

- (void)onAdResumeWithEvent:(FPAdResumeEvent * _Nonnull)event {
    printf("OnAdResume");
}

- (void)onAdSkipWithEvent:(FPAdSkipEvent * _Nonnull)event {
    printf("OnAdSkip");
}

- (void)onAdStartWithEvent:(FPAdStartEvent * _Nonnull)event {
    printf("OnAdStart");
}

- (void)onBufferWithEvent:(FPBufferEvent * _Nonnull)event {
    printf("OnBuffer");
}

- (void)onCompleteWithEvent:(FPCompleteEvent * _Nonnull)event {
    printf("OnComplete");
}

- (void)onErrorWithEvent:(FPErrorEvent * _Nonnull)event {
    printf("OnError");
}

- (void)onFullscreenWithEvent:(FPFullscreenEvent * _Nonnull)event {
    printf("OnFullscreen");
}

- (void)onIdleWithEvent:(FPIdleEvent * _Nonnull)event {
    printf("OnIdle");
}

- (void)onPauseWithEvent:(FPPauseEvent * _Nonnull)event {
    printf("OnPause");
}

- (void)onPlayWithEvent:(FPPlayEvent * _Nonnull)event {
    printf("OnPlay");
}

@end
