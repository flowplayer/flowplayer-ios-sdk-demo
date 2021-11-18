//
//  TableItem.h
//  FlowplayerExample-ObjectiveC
//
//  Created by Mehdi on 5. 7. 2021..
//

#import <UIKit/UIKit.h>
#import <Flowplayer/Flowplayer.h>

@interface TableItem : NSObject
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) FPFlowplayerMedia * flowplayerMedia;
@property (nonatomic, strong) FPExternalMedia * externalMedia;
@property (nonatomic, strong) NSArray *plugins;

- (id) initWith: (NSString *) title andFlowplayerMedia:(FPFlowplayerMedia *) flowplayerMedia plugins: (NSArray *) plugins;
- (id) initWith: (NSString *) title andExternalMedia:(FPExternalMedia *) externalMedia plugins: (NSArray *) plugins;
@end
