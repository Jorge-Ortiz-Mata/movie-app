//
//  VideModel.swift
//  video-app
//
//  Created by Jorge on 25/01/24.
//

import Foundation

struct VideoModel: Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var videoURL: String
    var description: String
    var duration: Int
    var category: String
    var reviews: Int
}
