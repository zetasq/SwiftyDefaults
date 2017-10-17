//
//  Float+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Float: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> Float? {
    return {
      return defaults.float(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (Float?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
