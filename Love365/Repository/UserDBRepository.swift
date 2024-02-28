//
//  UserDBRepository.swift
//  Love365
//
//  Created by 정주호 on 25/02/2024.
//

import Foundation
import Combine

protocol UserDBRepositoryType {
  func addUser(_ object: UserObject) -> AnyPublisher<Void, DBError>
}

class UserDBRepository: UserDBRepositoryType {
  func addUser(_ object: UserObject) -> AnyPublisher<Void, DBError> {
    Empty().eraseToAnyPublisher()
  }
}
