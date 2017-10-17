//
//  DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

public protocol DefaultsCompatibleType {
  
  static func reader(for defaults: UserDefaults, key: String) -> () -> Self?
  
  static func writer(for defaults: UserDefaults, key: String) -> (Self?) -> Void

}
