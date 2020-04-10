//
//  AuthPlugin.swift
//  Good Reads
//
//  Created by 유준상 on 2020/04/10.
//

import Moya

// https://github.com/devxoul/Drrrible/blob/master/Drrrible/Sources/Networking/Plugins/AuthPlugin.swift
struct AuthPlugin: PluginType {
  fileprivate let userService: UserServiceType

  init(userService: UserServiceType) {
    self.userService = userService
  }

  func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
    var request = request
    if let accessToken = self.userService.accessToken {
      request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization")
    }
    return request
  }
}
