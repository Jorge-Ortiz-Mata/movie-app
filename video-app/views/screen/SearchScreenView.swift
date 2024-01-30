//
//  SearchScreenView.swift
//  video-app
//
//  Created by Jorge on 30/01/24.
//

import SwiftUI

struct SearchScreenView: View {
    @State var movies: [VideoModel] = videosDataList
    @State var movieSearched: String = ""
    
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
                    
                    VStack(alignment: .leading) {
                        Text("Search by name:")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        
                        TextField("", text: $movieSearched)
                            .padding(7)
                            .foregroundColor(.white)
                            .border(Color(red: 0.2, green: 0.2, blue: 0.2))
                            .cornerRadius(4)
                            .onChange(of: movieSearched) {
                                filterMovies()
                            }
                        
                    }
                    .padding()
                    
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
    
    private func filterMovies() {
        if(movieSearched.count == 0) {
            movies = videosDataList
        } else {
            movies = videosDataList.filter { video in
                if(video.name.contains(movieSearched)) {
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
