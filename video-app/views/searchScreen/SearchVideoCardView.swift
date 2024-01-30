//
//  SearchVideoCardView.swift
//  video-app
//
//  Created by Jorge on 30/01/24.
//

import SwiftUI

struct SearchVideoCardView: View {
    var video: VideoModel
    
    var body: some View {
        HStack {
            VStack {
                Image(video.imageName)
                    .resizable()
                    .frame(width: 110, height: 150)
                .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(video.name)
                    .font(.title2)
                    .bold()
                .foregroundColor(.white)
                .padding(.bottom, 3)
                
                Text(video.description)
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Text(video.category)
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

#Preview {
    SearchVideoCardView(
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
