//
//  Appdelegate.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
  
  func application(_ app: UIApplication,
                   open url: URL,
                   options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    return GIDSignIn.sharedInstance.handle(url)
  }
}
