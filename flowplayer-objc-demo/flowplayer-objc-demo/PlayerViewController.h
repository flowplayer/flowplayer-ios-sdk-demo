//
//  PlayerViewController.h
//  flowplayer-objc-demo
//
//  Created by Georgios Savvidis on 02.10.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FlowplayerCore/FlowplayerCore.h>
#import <FlowplayerCore/FlowplayerCore-Swift.h>

@interface PlayerViewController : UIViewController <FPFlowplayerDelegate>
@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, strong) FPFlowplayerMedia * flowplayerMedia;
@property (nonatomic, strong) FPExternalMedia * externalMedia;
@property (nonatomic, strong) FPFlowplayerViewController* flowplayerViewController;

@end
