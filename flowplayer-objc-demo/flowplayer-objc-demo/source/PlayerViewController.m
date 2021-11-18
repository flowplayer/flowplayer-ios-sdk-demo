//
//  PlayerViewController.m
//  FlowplayerExample-ObjectiveC
//
//  Created by Mehdi on 5. 7. 2021..
//

#import "PlayerViewController.h"

@interface PlayerViewController () {}
@end

@implementation PlayerViewController

- (void)viewDidAppear:(BOOL)animated {
	_flowplayerViewController = [[FPFlowplayerViewController alloc] init];
	FPPlayerControlConfigBuilder * builder = [[FPPlayerControlConfig Builder] setMuteControl:true];
	
	builder = [builder enablePlugins:_plugins];
	builder = [builder setCustomWithKey:@"speed.options" value:@[@0.5, @1, @2, @5]];
	builder = [builder setCustomWithKey:@"speed.labels" value:@[@"Slow", @"Normal", @"Double", @"Fast"]];

	[_flowplayerViewController setControlConfig: [builder build]];

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

- (void)onMuteWithEvent:(FPMuteEvent * _Nonnull)event {
	printf("OnMuteChanged");
}

- (void)onVolumeWithEvent:(FPVolumeEvent * _Nonnull)event {
	printf("OnVolumeChanged");
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

- (void)onSpeedWithEvent:(FPSpeedEvent * _Nonnull)event {
	printf("OnSpeed");
}

- (void)onAudioTracksWithEvent:(FPAudioTracksEvent *)event {
	printf("OnAudioTracks");
}

- (void)onAudioTrackSelectWithEvent:(FPAudioTrackSelectEvent *)event {
	printf("OnAudioTrackSelect");
}

- (void)onOvpMetadataWithEvent:(FPOvpMetadataEvent * _Nonnull)event {
	printf("onOvpMetadataWithEvent");
}

- (void)onCastingWithEvent:(FPCastingEvent * _Nonnull)event {
	printf("onCastingWithEvent");
}

- (void)onSubtitleTrackSelectWithEvent:(FPSubtitleTrackSelectEvent * _Nonnull)event {
	printf("FPSubtitleTrackSelectEvent");
}

- (void)onSubtitleTracksWithEvent:(FPSubtitleTracksEvent * _Nonnull)event {
	printf("FPSubtitleTracksEvent");
}

- (void)onReadyWithEvent:(FPReadyEvent * _Nonnull)event {
	printf("onReadyEvent");
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
	printf("encodeWithCoder");
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
	printf("traitCollectionDidChange");
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
	printf("preferredContentSizeDidChangeForChildContentContainer");
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
	printf("sizeForChildContentContainer");
	return CGSizeZero;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
	printf("systemLayoutFittingSizeDidChangeForChildContentContainer");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
	printf("viewWillTransitionToSize");
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
	printf("willTransitionToTraitCollection");
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
	printf("didUpdateFocusInContext");
}

- (void)setNeedsFocusUpdate {
	printf("setNeedsFocusUpdate");
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
	return false;
}

- (void)updateFocusIfNeeded {
	printf("shouldUpdateFocusInContext");
}

@end
