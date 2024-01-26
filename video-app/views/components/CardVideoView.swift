//
//  CardVideoView.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

struct CardVideoView: View {
    var video: VideoModel
    
    var body: some View {
        NavigationLink(destination: VideoScreenView(video: video)) {
             VStack {
                Image(video.imageName)
                    .resizable()
                    .frame(width: 110, height: 150)
                    .cornerRadius(10)
                VStack {
                    HStack {
                        Text(video.name)
                            .bold()
                            .font(.title3)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Text("Estrellas")
                            .font(.caption)
                            .foregroundColor(.white)
                        Spacer()
                        Text("Vistas")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .padding(2)
    }
}

#Preview {
    CardVideoView(
        video: VideoModel(
            id: 5,
            name: "Spiderman 2",
            imageName: "spiderman-image",
            videoURL: "https://storage.googleapis.com/videos-app-bucket/spiderman.mp4",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            duration: 120,
            category: "Ciencia y ficcion",
            reviews: 5
        )
    )
}
