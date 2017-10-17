//
//  URL+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension URL: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> URL? {
    return {
      return defaults.url(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (URL?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
