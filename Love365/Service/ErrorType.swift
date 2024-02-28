//
//  DIContainer.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import Foundation

enum ServiceError: Error {
  case error(Error)
}

enum AuthenticationError: Error {
  case clientIDError
  case tokenError
  case invalidated
}

enum DBError: Error {
  case error(Error)
  case emptyValue
  case invalidatedType
}

enum ContactError: Error {
  case permissionDenied
}

enum PhotoPickerError: Error {
  case importFailed
}

enum UploadError: Error {
  case error(Error)
}
