//
//  video_appApp.swift
//  video-app
//
//  Created by Jorge on 19/01/24.
//

import SwiftUI

@main
struct video_appApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("signedIn") var isSignIn: Bool = false
    @AppStorage("userName") var userName: String = ""
    @AppStorage("userEmail") var userEmail: String = ""
    @AppStorage("userPhotoURL") var userPhotoURL: String = ""
    @AppStorage("isLoading") var isLoading: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if(isSignIn) {
                WelcomeScreenView()
            } else {
                LoginScreenView()
            }
        }
    }
}
