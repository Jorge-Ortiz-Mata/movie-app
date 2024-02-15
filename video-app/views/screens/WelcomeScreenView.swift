//
//  SwiftUIView.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

struct WelcomeScreenView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("joker")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("If you are looking for the latest movies")
                                .bold()
                                .foregroundColor(.white)
                                .font(.title)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                .font(.body)
                                .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                        }
                        .padding(.bottom, 20)
                        
                        NavigationLink(destination: TabScreensViews().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.title3)
                                Text("Let's Go")
                                    .foregroundColor(.white)
                                    .font(.title3)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(10)
                            .background(Color(red: 0, green: 0.3, blue: 0.2))
                            .cornerRadius(10)
                        }
                        .padding(.bottom, 20)
                    }
                }
                .padding(20)
            }
        }
        
    }
}

#Preview {
    WelcomeScreenView()
}
