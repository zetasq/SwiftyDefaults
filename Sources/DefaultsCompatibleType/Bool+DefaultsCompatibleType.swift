//
//  Bool+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Bool: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> Bool? {
    return defaultsObject as? Bool
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
