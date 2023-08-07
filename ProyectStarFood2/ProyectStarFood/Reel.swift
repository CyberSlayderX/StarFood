//
//  Reel.swift
//  ProyectStarFood
//
//  Created by DamII on 30/06/23.
//

import SwiftUI
import AVKit


struct Reel: Identifiable{
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
}
