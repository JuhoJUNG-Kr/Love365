//
//  Services.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

protocol ServicesType {
  var authService: AuthenticationServiceType { get set }
  var userService: UserServiceType { get set }
}

class Services: ServicesType {
  var authService: AuthenticationServiceType
  var userService: UserServiceType
  
  init() {
    self.authService = AuthenticationService()
    self.userService = UserService()
  }
}

class StubService: ServicesType {
  
  var authService: AuthenticationServiceType = StubAuthenticationService()
  var userService: UserServiceType = StubUserService()
  
}
