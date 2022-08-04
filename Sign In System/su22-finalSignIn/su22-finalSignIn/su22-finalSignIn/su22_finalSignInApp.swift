//
//  su22_finalSignInApp.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import SwiftUI
import Firebase

final class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
        
}

@main
struct su22_finalSignInApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self)var delegate
    @StateObject var sessionService = SessionServiceImpl()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                switch sessionService.state {
                case .loggedIn:
                    HomeView()
                        .environmentObject(sessionService)
                case .loggedOut:
                    LoginView()
                
                }
            }
            
        }
    }
}
