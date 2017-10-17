//
//  Int+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Int: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> Int? {
    return defaultsObject as? Int
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
