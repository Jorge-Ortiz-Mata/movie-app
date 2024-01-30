//
//  LoginScreenView.swift
//  video-app
//
//  Created by Jorge on 27/01/24.
//

import SwiftUI
import SwiftUIFontIcon

struct LoginScreenView: View {
    @AppStorage("isLoading") var isLoading: Bool = false
    @State var opacity = 0.0
    
    var body: some View {
        VStack {
            Group {
                VStack {
                    Text("Movie App")
                        .bold()
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    Text("You can create a free account!")
                        .foregroundColor(.white)
                }
                .padding(.bottom, 20)
                
                if(isLoading) {
                    VStack {
                        Text("Loging with Google...")
                            .foregroundColor(.white)
                        ProgressView()
                            .tint(.white)
                    }
                } else {
                    VStack {
                        Button {
                            UserDefaults.standard.set(true, forKey: "isLoading")
                            Authentication.share.signInWithGoogle(presenting: getRootViewController()) { error in }
                        } label: {
                            HStack {
                                Image("google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.horizontal, 5)
                                
                                Text("Login with Google")
                                    .bold()
                                    .foregroundColor(.black)
                            }
                            .padding()
                            .background(.white)
                            .cornerRadius(5)
                        }
                    }
                }
                
            }
            .opacity(opacity)
            .onAppear() {
                let baseAnimation = Animation.easeInOut(duration: 2).delay(0.5)

                withAnimation(baseAnimation) {
                    opacity = 1.0
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    LoginScreenView()
}
