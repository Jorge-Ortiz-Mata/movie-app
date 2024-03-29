//
//  MovieInfo.swift
//  video-app
//
//  Created by Jorge on 30/01/24.
//

import SwiftUI
import AVKit

struct MovieInfo: View {
    var video: VideoModel
    @State var rating: Int = 3
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  URL(string: video.videoURL)!))
                .frame(height: 250)
            
            HStack {
                VStack {
                    Image(video.imageName)
                        .resizable()
                        .frame(width: 130, height: 180)
                }
                VStack(alignment: .leading) {
                    Group {
                        Text(video.name)
                            .bold()
                            .font(.title)
                        .foregroundColor(.white)
                    }
                    .padding(.bottom, 10)
                    
                    Group {
                        Text("Duracion: \(video.duration) min")
                            .font(.body)
                        .foregroundColor(.white)
                    }
                    .padding(.bottom, 10)
                        
                    
                    HStack {
                        Text("Reviews: ")
                            .foregroundColor(.white)
                            .font(.body)
                        Group {
                            Text(String(repeating: "⭐️", count: rating))
                                .font(.caption)
                        }
                    }
                    .padding(.bottom, 2)
                    
                    Group {
                        Text("Categoria: \(video.category)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
            
            Group {
                Text(video.description)
                    .foregroundColor(.white)
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    MovieInfo(
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
