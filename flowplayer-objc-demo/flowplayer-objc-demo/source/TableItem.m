//
//  TableItem.m
//  FlowplayerExample-ObjectiveC
//
//  Created by Mehdi on 5. 7. 2021..
//

#import "TableItem.h"
@interface TableItem ()
@end

@implementation TableItem

-(id)initWith:(NSString *)title andExternalMedia:(FPExternalMedia *)externalMedia plugins:(NSArray *)plugins {
	self.title = title;
	self.externalMedia = externalMedia;
	self.plugins = plugins;
	
	return self;
}

-(id)initWith:(NSString *)title andFlowplayerMedia:(FPFlowplayerMedia *)flowplayerMedia plugins:(NSArray *)plugins {
	self.title = title;
	self.flowplayerMedia = flowplayerMedia;
	self.plugins = plugins;
	
	return self;
}

@end
