//
//  ViewController.swift
//  flowplayer-demo
//
//  Created by Georgios Savvidis on 01.09.19.
//  Copyright © 2019 Flowplayer AB. All rights reserved.
//

import UIKit
import FlowplayerCore

class PlayerViewController: UIViewController, FPFlowplayerDelegate {
    @IBOutlet weak var containerView: UIView!
    
    var flowplayerMedia: FPFlowplayerMedia?
    var externalMedia: FPExternalMedia?

    private let flowplayerViewController = FPFlowplayerViewController()

    override func viewDidAppear(_ animated: Bool) {
        
        let config = FPPlayerControlConfigBuilder()
            .setMuteControl(true)
            .enablePlugins(["speed"])
            .setCustom(key: "speed.options", value: [0.5, 1, 2, 5])
            .setCustom(key: "speed.labels", value: ["Slow", "Normal", "Double", "Fast"])
            .build()
        
        flowplayerViewController.setControlConfig(config)
        
        containerView.addSubview(flowplayerViewController.view)

        // Add the delegate after the flowplayerViewController has been added to the container.
        flowplayerViewController.addPlayerDelegate(self)

        if let flowplayerMedia = flowplayerMedia {
            flowplayerViewController.prepare(flowplayerMedia: flowplayerMedia, autoStart: true)
        } else if let externalMedia = externalMedia {
            flowplayerViewController.prepare(externalMedia: externalMedia, autoStart: true)
        }
    }
    
    func onIdle(event: FPIdleEvent) {
        print("OnIdle")
    }
    
    func onPlay(event: FPPlayEvent) {
        print("OnPlay")
    }
    
    func onPause(event: FPPauseEvent) {
        print("OnPause")
    }
    
    func onBuffer(event: FPBufferEvent) {
        print("OnBuffer")
    }
    
    func onComplete(event: FPCompleteEvent) {
        print("OnComplete")
    }
    
    func onFullscreen(event: FPFullscreenEvent) {
        print("OnFullscreen")
    }
  
    func onMute(event: FPMuteEvent) {
        print("OnMute")
    }
    
    func onVolume(event: FPVolumeEvent) {
        print("OnVolume")
    }
    
    func onSpeed(event: FPSpeedEvent) {
        print("OnSpeed: \(event.speed)")
    }
    
    func onError(event: FPErrorEvent) {
        print("OnError")
    }
    
    func onAdBreakStart(event: FPAdBreakStartEvent) {
        print("OnAdBreakStart")
    }
    
    func onAdBreakComplete(event: FPAdBreakCompleteEvent) {
        print("OnAdBreakComplete")
    }
    
    func onAdStart(event: FPAdStartEvent) {
        print("OnAdStart")
    }
    
    func onAdPause(event: FPAdPauseEvent) {
        print("OnAdPause")
    }
    
    func onAdResume(event: FPAdResumeEvent) {
        print("OnAdResume")
    }
    
    func onAdClick(event: FPAdClickEvent) {
        print("OnAdClick")
    }
    
    func onAdSkip(event: FPAdSkipEvent) {
        print("OnAdSkip")
    }
    
    func onAdComplete(event: FPAdCompleteEvent) {
        print("OnAdComplete")
    }
    
    func onAdError(event: FPAdErrorEvent) {
        print("OnAdError")
    }
}

