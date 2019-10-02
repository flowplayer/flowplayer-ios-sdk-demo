//
//  TableItem.h
//  flowplayer-objc-demo
//
//  Created by Georgios Savvidis on 02.10.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FlowplayerCore/FlowplayerCore.h>

@interface TableItem : NSObject
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) FPFlowplayerMedia * flowplayerMedia;
@property (nonatomic, strong) FPExternalMedia * externalMedia;

- (id) initWith: (NSString *) title andFlowplayerMedia:(FPFlowplayerMedia *) flowplayerMedia;
- (id) initWith: (NSString *) title andExternalMedia:(FPExternalMedia *) externalMedia;
@end
