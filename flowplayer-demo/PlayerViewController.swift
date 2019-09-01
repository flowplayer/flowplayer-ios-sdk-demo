//
//  ViewController.swift
//  flowplayer-demo
//
//  Created by Georgios Savvidis on 01.09.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

import UIKit
import FlowplayerCore

class PlayerViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    
    var flowplayerMedia: FPFlowplayerMedia?
    var externalMedia: FPExternalMedia?
    
    private let flowplayerViewController = FPFlowplayerViewController()
    
    override func viewDidAppear(_ animated: Bool) {
        containerView.addSubview(flowplayerViewController.view)
        
        if let flowplayerMedia = flowplayerMedia {
            flowplayerViewController.prepare(media: flowplayerMedia, autoStart: true)
        } else if let externalMedia = externalMedia {
            flowplayerViewController.prepare(media: externalMedia, autoStart: true)
        }
    }
}

