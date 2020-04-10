//
//  UserService.swift
//  Good Reads
//
//  Created by 유준상 on 2020/04/10.
//

import Moya
import RxMoya
import RxSwift

protocol UserServiceType {
  var accessToken: String? { get }
}

final class UserService: UserServiceType {
  private(set) var accessToken: String?
}
