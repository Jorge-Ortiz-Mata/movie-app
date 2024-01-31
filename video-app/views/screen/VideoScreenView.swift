//
//  VideoScreenView.swift
//  video-app
//
//  Created by Jorge on 25/01/24.
//

import SwiftUI

struct VideoScreenView: View {
    var video: VideoModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                MovieInfo(video: video)
            }
            .toolbar(.hidden, for: .tabBar)
            .background(.black)
        }
    }
}

#Preview {
    VideoScreenView(
        video: VideoModel(
            id: 5,
            name: "Spiderman 2",
            imageName: "spiderman-image",
            videoURL: "https://storage.googleapis.com/videos-app-bucket/spiderman.mp4",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            duration: 120,
            category: "Ciencia y ficcion"
        )
    )
}
