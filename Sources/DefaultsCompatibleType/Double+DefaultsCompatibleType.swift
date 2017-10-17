//
//  Double+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension Double: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> Double? {
    return defaultsObject as? Double
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
