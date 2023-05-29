//
//  PlayerManager.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 24/05/23.
//

import Foundation
import AVKit

class PlayerManager: ObservableObject {
    
    var player: AVPlayer? = AVPlayer(url: Bundle.main.url(forResource: "felca", withExtension: "mp4")!)
    var videoName: String = "felca" {
        didSet {
            player = AVPlayer(url: Bundle.main.url(forResource: videoName, withExtension: "mp4")!)
        }
    }
    
}
