//
//  AuthenticationViewModel.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation
import Combine

enum AuthenticationState {
  case unAuthenticated
  case authenticated
}

class AuthenticationViewModel: ObservableObject {
  
  enum Action {
    case googleLogin
  }
  
  @Published var authenticationState: AuthenticationState = .unAuthenticated
  
  var userId: String?
  
  private var container: DIContainer
  private var subscriptions = Set<AnyCancellable>()
  
  init(container: DIContainer) {
    self.container = container
  }
  
  func send(action: Action) {
    switch action {
    case .googleLogin:
      container.services.authService.signInWithGoogle()
        .sink { completion in
          
        } receiveValue: { [weak self] user in
          self?.userId = user.id
        }.store(in: &subscriptions)
    }
  }
}
