//
//  TableItem.swift
//  flowplayer-demo
//
//  Created by Georgios Savvidis on 01.09.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//
import FlowplayerCore

struct TableItem {
	let title: String
	let flowplayerMedia: FPFlowplayerMedia?
	let externalMedia: FPExternalMedia?
	let plugins: Array<String>
	let useCustomControls: Bool
}

let tableItemList = [
	TableItem(title: "Flowplayer (mediaId + playerId)",
			  flowplayerMedia: FPFlowplayerMedia(mediaId: Constants.DEMO_MEDIA_ID,
												 playerId: Constants.DEMO_PLAYER_ID),
			  externalMedia: nil,
			  plugins: ["speed", "asel", "analytics"],
			  useCustomControls: false),
	
	TableItem(title: "HLS with VMAP",
			  flowplayerMedia: nil,
			  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_HLS)!,
											 adSchedule: FPAdSchedule(adScheduleUrl: Constants.DEMO_URL_VMAP)),
			  plugins: ["speed", "asel", "analytics"],
			  useCustomControls: false),
	
	TableItem(title: "HLS with waterfall",
			  flowplayerMedia: nil,
			  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_HLS)!,
											 adSchedule: FPAdSchedule(adScheduleWaterfall: [
																		FPAdBreak(adTag: Constants.DEMO_URL_AD_PREROLL, roll: .pre),
																		FPAdBreak(adTags: [Constants.DEMO_URL_AD_MIDROLL1, Constants.DEMO_URL_AD_MIDROLL2, Constants.DEMO_URL_AD_MIDROLL3], offset: 10),
																		FPAdBreak(adTag: Constants.DEMO_URL_AD_POSTROLL, roll: .post)])),
			  plugins: ["speed", "asel", "analytics"],
			  useCustomControls: false),
	
	TableItem(title: "MP4",
			  flowplayerMedia: nil,
			  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_MP4)!),
			  plugins: ["speed", "asel", "analytics"],
			  useCustomControls: false),
	TableItem(title: "HLS with embedded subtitles",
			  flowplayerMedia: nil,
			  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_HLS_SUBTITLES)!),
			  plugins: ["subtitles", "asel"],
			  useCustomControls: false),
	TableItem(title: "Flowplayer media with sideloaded subs",
			  flowplayerMedia: FPFlowplayerMedia(mediaId: Constants.DEMO_MEDIA_ID_SUBTITLES,
												 playerId: Constants.DEMO_PLAYER_ID),
			  externalMedia: nil,
			  plugins: ["subtitles"],
			  useCustomControls: false),
	TableItem(title: "Custom web controls",
			  flowplayerMedia: nil,
			  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_MP4)!),
			  plugins: [],
			  useCustomControls: true)
]
