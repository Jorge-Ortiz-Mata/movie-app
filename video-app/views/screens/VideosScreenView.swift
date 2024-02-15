//
//  Videos.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

struct VideosScreenView: View {
    var videosData: [VideoModel] = videosDataList
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    VideoSectionTitle(title: "Fantasia")
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(videosDataList) { video in
                                CardVideoView(video: video)
                            
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    VideoSectionTitle(title: "Fantasia")
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(videosDataList) { video in
                                CardVideoView(video: video)
                            
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    VideoSectionTitle(title: "Fantasia")
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(videosDataList) { video in
                                CardVideoView(video: video)
                            
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    VideoSectionTitle(title: "Fantasia")
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(videosDataList) { video in
                                CardVideoView(video: video)
                            
                            }
                        }
                    }
                }
                .padding(.bottom, 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(
                LinearGradient(gradient: Gradient(colors: [primaryColor, secondaryColor]), startPoint: .top, endPoint: .bottom)
            )
        }
        
        
    }
}

#Preview {
    VideosScreenView()
}
