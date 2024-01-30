//
//  Auth.swift
//  video-app
//
//  Created by Jorge on 29/01/24.
//

import Foundation
import Firebase
import FirebaseAuth
import GoogleSignIn

struct Authentication {
    static let share = Authentication()
    
    private init() {}
    
    func signInWithGoogle(presenting: UIViewController, completion: @escaping(Error?) -> Void)  {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: presenting) { result, error in
//            helloo
            guard error == nil else {
                completion(error)
                return
            }

            guard let user = result?.user, let idToken = user.idToken?.tokenString
            else {
            // ...
                return
            }
                
            guard let user = result?.user, let email = user.profile?.email
            else {
                // ...
                return
            }
            
            guard let user = result?.user, let username = user.profile?.name
            else {
                // ...
                return
            }
            
            guard let user = result?.user, let imageURL = user.profile?.imageURL(withDimension: 180)
            else {
                // ...
                return
            }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { result, error in
                
                guard error == nil else {
                    completion(error)
                    return
                }
                
                UserDefaults.standard.set(true, forKey: "signedIn")
                UserDefaults.standard.set(username, forKey: "userName")
                UserDefaults.standard.set(email, forKey: "userEmail")
                UserDefaults.standard.set(imageURL.absoluteString, forKey: "userPhotoURL")
            }
        }
    }
    
    func logOut() {
        UserDefaults.standard.set(false, forKey: "isLoading")
        UserDefaults.standard.set(false, forKey: "signedIn")
        UserDefaults.standard.set("", forKey: "userName")
        UserDefaults.standard.set("", forKey: "userEmail")
        UserDefaults.standard.set("", forKey: "userPhotoURL")
    }
}
