//
//  CardVideoView.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

struct CardVideoView: View {
    var video: VideoModel
    @State var isFavorite: Bool = false
    
    var body: some View {
        ZStack {
            NavigationLink(destination: VideoScreenView(video: video)) {
                VStack{
                    Image(video.imageName)
                        .resizable()
                        .frame(width: 110, height: 150)
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Text(video.name)
                        .bold()
                        .font(.body)
                        .foregroundColor(.white)
                }
                .padding(.bottom, 20)
                
            }
            .frame(width: 110, height: 170)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        handleOnIsFavorite()
                    } label: {
                        if(isFavorite) {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                        } else {
                            Image(systemName: "heart")
                                .foregroundColor(.white)
                        }
                    }
                }
                Spacer()
            }
            .padding(3)
        }
        .frame(width: 110, height: 170)
        .background(.black)
        .cornerRadius(10)
    }
            
            
    
    private func handleOnIsFavorite() {
        isFavorite = !isFavorite
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
            category: "Ciencia y ficcion"
        )
    )
}
