//
//  User.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

struct User {
  var id: String
  var name: String
  var phoneNumber: String?
  var profileURL: String?
  var description: String?
  var birthday: String?
  var fcmToken: String?
}

extension User {
  func toObject() -> UserObject {
    .init(id: id,
          name: name,
          phoneNumber: phoneNumber,
          profileURL: profileURL,
          description: description,
          birthday: birthday,
          fcmToken: fcmToken
    )
  }
}

extension User {
  static var stub1: User {
    .init(id: "user1_id", name: "Mike")
  }
  
  static var stub2: User {
    .init(id: "user2_id", name: "Kim")
  }
}
