//
//  Bool+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Bool: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> Bool? {
    return {
      defaults.bool(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (Bool?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }

}
