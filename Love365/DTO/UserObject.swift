//
//  UserObject.swift
//  Love365
//
//  Created by 정주호 on 25/02/2024.
//

import Foundation

struct UserObject: Codable {
  var id: String
  var name: String
  var phoneNumber: String?
  var profileURL: String?
  var description: String?
  var birthday: String?
  var fcmToken: String?
}

extension UserObject {
  func toModel() -> User {
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
