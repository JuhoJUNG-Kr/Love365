//
//  UserService.swift
//  Love365
//
//  Created by 정주호 on 25/02/2024.
//

import Foundation
import Combine

protocol UserServiceType {
  func addUser(_ user: User) -> AnyPublisher<User, ServiceError>
}

class UserService: UserServiceType {
  func addUser(_ user: User) -> AnyPublisher<User, ServiceError> {
    Empty().eraseToAnyPublisher()
  }
}

class StubUserService: UserServiceType {
  func addUser(_ user: User) -> AnyPublisher<User, ServiceError> {
    Empty().eraseToAnyPublisher()
  }
}
