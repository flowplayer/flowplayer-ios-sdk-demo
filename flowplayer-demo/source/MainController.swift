//
//  MainViewController.swift
//  flowplayer-demo
//
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

import UIKit
import AVFoundation
import FlowplayerCore

fileprivate let SEGUE_ID = "playerControllerSegue"
fileprivate let CELL_ID  = "cell"

class MainController: UITableViewController {
    
	// - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.tableFooterView = .init()
		// Required for audio playback on physical devices
		try! AVAudioSession.sharedInstance().setCategory(.playback)
	}
	
	// - Table DataSource
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tableItemList.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath)
		let item = tableItemList[indexPath.row]
		cell.textLabel!.text = item.title
		return cell
	}
	
	// - Table Delegate
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let selectedItem = tableItemList[indexPath.row]
		performSegue(withIdentifier: SEGUE_ID, sender: selectedItem)
	}
	
	// - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let selectedItem = sender as? TableItem else { return }
		let playerViewController = segue.destination as! PlayerController
		
		playerViewController.externalMedia = selectedItem.externalMedia
		playerViewController.flowplayerMedia = selectedItem.flowplayerMedia
		playerViewController.plugins = selectedItem.plugins
		playerViewController.useCustomWebControls = selectedItem.useCustomControls
		playerViewController.mediaName = selectedItem.title
	}
	
}
