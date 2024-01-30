//
//  TabScreensViews.swift
//  video-app
//
//  Created by Jorge on 26/01/24.
//

import SwiftUI

struct TabScreensViews: View {
    var body: some View {
        TabView {
            Group {
                VideosScreenView()
                    .tabItem {
                        Label("Peliculas", systemImage: "video.circle.fill")
                }
                
                SearchScreenView()
                    .tabItem {
                        Label("Buscar", systemImage: "magnifyingglass")
                    }
            
                SettingsScreenView()
                    .tabItem {
                        Label("Configuracion", systemImage: "gear")
                    }
            }
            .toolbarBackground(.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    TabScreensViews()
}
