//
//  TableItem.m
//  flowplayer-objc-demo
//
//  Created by Georgios Savvidis on 02.10.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

#import "TableItem.h"
@interface TableItem ()
@end

@implementation TableItem

-(id)initWith:(NSString *)title andExternalMedia:(FPExternalMedia *)externalMedia {
    self.title = title;
    self.externalMedia = externalMedia;
    
    return self;
}

-(id)initWith:(NSString *)title andFlowplayerMedia:(FPFlowplayerMedia *)flowplayerMedia {
    self.title = title;
    self.flowplayerMedia = flowplayerMedia;
    
    return self;
}

@end
