//
//  URL+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 17/10/2017.
//

import Foundation

extension URL: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> URL? {
    return defaultsObject as? URL
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
