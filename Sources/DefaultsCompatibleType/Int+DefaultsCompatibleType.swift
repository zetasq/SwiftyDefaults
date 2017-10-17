//
//  Int+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Int: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> Int? {
    return {
      defaults.integer(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (Int?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
