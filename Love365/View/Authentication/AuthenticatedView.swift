//
//  AuthenticatedView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

struct AuthenticatedView: View {
  @StateObject var viewModel: AuthenticationViewModel
  
  var body: some View {
    switch viewModel.authenticationState {
    case .unAuthenticated:
      LoginIntroView()
    case .authenticated:
      MainTabView()
    }
  }
}

#Preview {
  AuthenticatedView(viewModel: .init(container: .init(services: StubService())))
}
