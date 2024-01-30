//
//  LoginScreenView.swift
//  video-app
//
//  Created by Jorge on 27/01/24.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn
import Firebase

struct LoginScreenView: View {
    var body: some View {
        Group {
            Button("Sign in With Google") {
                Authentication.share.signInWithGoogle(presenting: getRootViewController()) { error in }
            }
        }
    }
}

#Preview {
    LoginScreenView()
}
