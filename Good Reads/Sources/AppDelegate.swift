//
//  AppDelegate.swift
//  Good Reads
//
//  Created by JunSang Ryu on 2020/04/10.
//  Copyright © 2020 JunSang Ryu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.makeKeyAndVisible()
    
    let viewController = ViewController()
    window.rootViewController = viewController
    
    self.window = window
    
    return true
  }
}
