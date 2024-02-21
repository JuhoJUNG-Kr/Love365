//
//  Services.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

protocol ServicesType {
  var authService: AuthenticationServiceType { get set }
}

class Services: ServicesType {
  var authService: AuthenticationServiceType
  
  init() {
    self.authService = AuthenticationService()
  }
}

class StubService: ServicesType {
  
  var authService: AuthenticationServiceType = StubAuthenticationService()
  
  
}
