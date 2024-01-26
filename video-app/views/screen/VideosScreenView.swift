//
//  Videos.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

struct VideosScreenView: View {
    var videosData: [VideoModel] = videosDataList
    var primaryColor: Color = Color(red: 0, green: 0, blue: 0)
    var secondaryColor: Color = Color(red: 0.2, green: 0.2, blue: 0.2)
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Group {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.backward.circle")
                                .foregroundColor(.white)
                                .bold()
                                .font(.title3)
                            Text("Regresar")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title3)
                        }
                    }
                    .padding(.bottom, 10)
                    
                
                    Spacer()
                }
                
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
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    VideosScreenView()
}
