//
//  MainViewController.swift
//  flowplayer-demo
//
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

import UIKit
import FlowplayerCore

class MainViewController: UITableViewController {
    private var selectedItem: TableItem?
    
    private let items = [
        TableItem(title: "Flowplayer (mediaId + playerId)",
                  flowplayerMedia: FPFlowplayerMedia(mediaId: Constants.DEMO_MEDIA_ID,
                                                     playerId: Constants.DEMO_PLAYER_ID),
                  externalMedia: nil),
        
        TableItem(title: "HLS with VMAP",
                  flowplayerMedia: nil,
                  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_HLS)!,
                                                 adSchedule: FPAdSchedule(adScheduleUrl: Constants.DEMO_URL_VMAP))),
        
        TableItem(title: "HLS with waterfall",
                  flowplayerMedia: nil,
                  externalMedia: FPExternalMedia(mediaUrl: URL(string: Constants.DEMO_URL_HLS)!,
                                                 adSchedule: FPAdSchedule(adScheduleWaterfall: [
                                                    FPAdBreak(adTag: Constants.DEMO_URL_AD_PREROLL, roll: .pre),
                                                    FPAdBreak(adTags: [Constants.DEMO_URL_AD_MIDROLL1, Constants.DEMO_URL_AD_MIDROLL2, Constants.DEMO_URL_AD_MIDROLL3], offset: 10),
                                                    FPAdBreak(adTag: Constants.DEMO_URL_AD_POSTROLL, roll: .post)]))),
        
        TableItem(title: "MP4",
                  flowplayerMedia: nil,
                  externalMedia: FPExternalMedia(mediaUrl: URL(string: "https://edge.flowplayer.org/drive.mp4")!))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = items[indexPath.row]
        
        performSegue(withIdentifier: "PlayerViewControllerSegue", sender: self)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let playerViewController = segue.destination as! PlayerViewController
        playerViewController.externalMedia = selectedItem?.externalMedia
        playerViewController.flowplayerMedia = selectedItem?.flowplayerMedia
    }
}
