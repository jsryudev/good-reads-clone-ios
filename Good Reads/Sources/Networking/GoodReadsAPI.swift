//
//  GoodReadsAPI.swift
//  Good Reads
//
//  Created by JunSang Ryu on 2020/04/10.
//

import Moya

enum GoodReadsAPI {
  case signUp(email: String, password: String)
  case withdrawal
  case signIn(email: String, password: String)
  case signOut
}

extension GoodReadsAPI: TargetType {
  var baseURL: URL {
    return URL(string: "https://good-reads-clone-api-express.herokuapp.com")!
  }
  
  var path: String {
    switch self {
    case .signUp, .withdrawal:
      return "/user"
    case .signIn, .signOut:
      return "/user/session"
    }
  }
  
  var method: Method {
    switch self {
    case .signUp, .signIn:
      return .post
    case .signOut, .withdrawal:
      return .delete
    }
  }
  
  var sampleData: Data {
    return Data()
  }
  
  var task: Task {
    switch self {
    case .signUp(let email, let password), .signIn(let email, let password):
      return .requestParameters(
        parameters: ["email": email, "password": password],
        encoding: JSONEncoding.default
      )
    default:
      return .requestPlain
    }
  }
  
  var headers: [String : String]? {
    return ["Content-type": "application/json"]
  }
}
