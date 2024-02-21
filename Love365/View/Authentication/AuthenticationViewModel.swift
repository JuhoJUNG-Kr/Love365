//
//  AuthenticationViewModel.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

enum AuthenticationState {
  case unAuthenticated
  case authenticated
}

class AuthenticationViewModel: ObservableObject {
  
  enum Action {
    case googleLogin
  }
  
  @Published var authenticationState: AuthenticationState = .unAuthenticated
  
  private var container: DIContainer
  
  init(container: DIContainer) {
    self.container = container
  }
  
  func send(action: Action) {
    switch action {
    case .googleLogin:
      return
    }
  }
}
