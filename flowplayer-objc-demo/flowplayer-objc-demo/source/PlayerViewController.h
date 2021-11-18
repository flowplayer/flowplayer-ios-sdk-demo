//
//  PlayerViewController.h
//  FlowplayerExample-ObjectiveC
//
//  Created by Mehdi on 5. 7. 2021..
//

#import <UIKit/UIKit.h>
#import <Flowplayer/Flowplayer.h>

@interface PlayerViewController : UIViewController <FPFlowplayerDelegate>
@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, strong) FPFlowplayerMedia * flowplayerMedia;
@property (nonatomic, strong) FPExternalMedia * externalMedia;
@property (nonatomic, strong) FPFlowplayerViewController* flowplayerViewController;
@property (nonatomic, strong) NSArray *plugins;

@end
