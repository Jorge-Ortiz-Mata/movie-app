//
//  VideoScreenView.swift
//  video-app
//
//  Created by Jorge on 25/01/24.
//

import SwiftUI
import AVKit

struct VideoScreenView: View {
    var video: VideoModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
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
                                    Text(String(repeating: "⭐️", count: video.reviews))
                                        .font(.caption)
                                }
                            }
                            .padding(.bottom, 2)
                            
                            Group {
                                Text("Categoria: \(video.category) min")
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
            category: "Ciencia y ficcion",
            reviews: 5
        )
    )
}
