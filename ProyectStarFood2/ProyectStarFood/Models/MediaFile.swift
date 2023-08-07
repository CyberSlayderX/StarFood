//
//  MediaFile.swift
//  ProyectStarFood
//
//  Created by DamII on 30/06/23.
//

import SwiftUI

struct MediaFile: Identifiable{
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpanded: Bool = false
}
var MediaFileJSON = [
    MediaFile(url: "reel_1", title: "la mmm"),
    MediaFile(url: "reel_2", title: "la mmm"),
    MediaFile(url: "ree1_3", title: "la mmm"),
    MediaFile(url: "ree1_4", title: "la mmm"),
    MediaFile(url: "ree1_5", title: "la mmm"),
    MediaFile(url: "ree1_6", title: "la mmm"),

]
