//
//  CustomVideoPlayer.swift
//  ProyectStarFood
//
//  Created by DamII on 30/06/23.
//

import SwiftUI
import AVKit
struct CustomVideoPlayer: UIViewControllerRepresentable{
    var player: AVPlayer
    func makeCoordinator() -> Coordinador {
        return Coordinador(parent: self)
    }
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let  controller  = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.videoGravity = .resizeAspectFill
        player.actionAtItemEnd = .none
        NotificationCenter.default.addObserver(context.coordinator, selector: #selector(context.coordinator.restartPlayback),name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    class Coordinador: NSObject{
        var parent: CustomVideoPlayer
        init(parent: CustomVideoPlayer) {
            self.parent = parent
        }
        @objc func restartPlayback(){
            parent.player.seek(to: .zero)
        }
    }
}
