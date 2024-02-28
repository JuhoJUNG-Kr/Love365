//
//  AuthenticatedView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

struct AuthenticatedView: View {
  @StateObject var authViewModel: AuthenticationViewModel
  
  var body: some View {
    VStack {
      switch authViewModel.authenticationState {
      case .unAuthenticated:
        LoginIntroView()
          .environmentObject(authViewModel)
      case .authenticated:
        MainTabView()
      }
    }
    .onAppear {
      authViewModel.send(action: .checkAuthenticationState)
    }
  }
}

#Preview {
  AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
