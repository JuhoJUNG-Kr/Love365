//
//  Love365App.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

@main
struct Love365App: App {
  
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  @StateObject var container: DIContainer = .init(services: Services())
  
    var body: some Scene {
        WindowGroup {
          AuthenticatedView(authViewModel: .init(container: container))
            .environmentObject(container)
        }
    }
}
