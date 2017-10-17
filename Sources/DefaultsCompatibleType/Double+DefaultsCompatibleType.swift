//
//  Double+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Double: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> Double? {
    return {
      defaults.double(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (Double?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
