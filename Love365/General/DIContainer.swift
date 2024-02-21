//
//  DIContainer.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

class DIContainer: ObservableObject {
  var services: ServicesType
  
  init(services: ServicesType) {
    self.services = services
  }
}
