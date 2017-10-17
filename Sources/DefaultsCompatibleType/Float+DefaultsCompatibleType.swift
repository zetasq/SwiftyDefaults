//
//  Float+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Float: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> Float? {
    return defaultsObject as? Float
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
