//
//  BaseViewController.swift
//  Good Reads
//
//  Created by JunSang Ryu on 2020/04/21.
//

import UIKit

import RxSwift

class BaseViewController: UIViewController {
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required convenience init?(coder aDecoder: NSCoder) {
    self.init()
  }
  
  var disposeBag = DisposeBag()
  
  private(set) var didSetupConstraints = false
  
  override func viewDidLoad() {
    self.view.setNeedsUpdateConstraints()
    self.addSubViews()
    
    if #available(iOS 13.0, *) {
      self.view.backgroundColor = .systemBackground
    }
  }
  
  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }
  
  func addSubViews() {
    // Override point
  }
  
  func setupConstraints() {
    // Override point
  }
}
