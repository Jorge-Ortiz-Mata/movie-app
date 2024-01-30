//
//  SearchScreenView.swift
//  video-app
//
//  Created by Jorge on 30/01/24.
//

import SwiftUI

struct SearchScreenView: View {
    @State var movies: [VideoModel] = videosDataList
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Text("Search Movie")
                                .foregroundColor(.white)
                                .bold()
                                .font(.title)
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                    SearchFormView(handleOnChange: (filterMovies))
                    
                    VStack {
                        ForEach(movies) { video in
                            NavigationLink(destination: VideoScreenView(video: video)) {
                                VStack {
                                    SearchVideoCardView(video: video)
                                    Divider().overlay(.gray)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 2)
                            }
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(.black)
        }
    }
    
    private func filterMovies(name: String) {
        if(name.count == 0) {
            movies = videosDataList
        } else {
            movies = videosDataList.filter { video in
                if(video.name.contains(name)) {
                    true
                } else {
                    false
                }
            }
        }
    }
}

#Preview {
    SearchScreenView()
}
