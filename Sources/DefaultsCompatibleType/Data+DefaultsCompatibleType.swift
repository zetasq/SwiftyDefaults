//
//  Data+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Data: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> Data? {
    return defaultsObject as? Data
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
