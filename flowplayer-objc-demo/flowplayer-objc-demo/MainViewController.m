//
//  ViewController.m
//  flowplayer-objc-demo
//
//  Created by Georgios Savvidis on 02.10.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@end

@implementation MainViewController
NSArray<TableItem *> *items;
TableItem *selectedItem;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSArray<FPAdBreak *> *waterfallAdSchedule = @[
		[[FPAdBreak alloc] initWithAdTag:DEMO_URL_AD_PREROLL roll:RollPre],
		[[FPAdBreak alloc] initWithAdTags:@[DEMO_URL_AD_MIDROLL1, DEMO_URL_AD_MIDROLL2, DEMO_URL_AD_MIDROLL3] offset:10],
		[[FPAdBreak alloc] initWithAdTag:DEMO_URL_AD_POSTROLL roll:RollPost],
	];
	
	items = @[
		[[TableItem alloc] initWith:@"Flowplayer (mediaId + playerId)" andFlowplayerMedia:[[FPFlowplayerMedia alloc] initWithMediaId:DEMO_MEDIA_ID playerId:DEMO_PLAYER_ID preferredPeakBitRate: 0]],
		
		[[TableItem alloc] initWith:@"HLS with VMAP" andExternalMedia:[[FPExternalMedia alloc] initWithMediaUrl:[[NSURL alloc] initWithString:DEMO_URL_VMAP] adSchedule:[[FPAdSchedule alloc] initWithAdScheduleUrl:DEMO_URL_VMAP]]],
		
		[[TableItem alloc] initWith:@"HLS with waterfall" andExternalMedia:[[FPExternalMedia alloc] initWithMediaUrl:[[NSURL alloc] initWithString:DEMO_URL_VMAP] adSchedule:[[FPAdSchedule alloc] initWithAdScheduleWaterfall:waterfallAdSchedule]]],
		
		[[TableItem alloc] initWith:@"MP4" andExternalMedia:[[FPExternalMedia alloc] initWithMediaUrl:[[NSURL alloc] initWithString:DEMO_URL_MP4] adSchedule:nil]]
	];
	
	
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell-id"];
	
	[cell textLabel].text = items[indexPath.row].title;
	
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	selectedItem = items[indexPath.row];
	
	[self performSegueWithIdentifier:@"playerControllerSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	PlayerViewController * playerController = [segue destinationViewController];
	playerController.externalMedia = selectedItem.externalMedia;
	playerController.flowplayerMedia = selectedItem.flowplayerMedia;
}

@end
