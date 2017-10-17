//
//  Data+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Data: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> Data? {
    return {
      defaults.data(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (Data?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
