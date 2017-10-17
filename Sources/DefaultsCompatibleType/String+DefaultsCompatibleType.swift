//
//  String+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

extension String: DefaultsCompatibleType {
  
  public static func reader(for defaults: UserDefaults, key: String) -> () -> String? {
    return {
      defaults.string(forKey: key)
    }
  }
  
  public static func writer(for defaults: UserDefaults, key: String) -> (String?) -> Void {
    return {
      defaults.set($0, forKey: key)
    }
  }
  
}
