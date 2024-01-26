//
//  videoSectionTitle.swift
//  video-app
//
//  Created by Jorge on 25/01/24.
//

import SwiftUI

struct VideoSectionTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .foregroundColor(.white)
    }
}

#Preview {
    VideoSectionTitle(title: "Superheroes")
}
