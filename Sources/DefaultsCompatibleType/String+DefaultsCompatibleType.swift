//
//  String+DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

extension String: DefaultsCompatibleType {
  
  public static func decodeValue(for defaultsObject: Any) -> String? {
    return defaultsObject as? String
  }
  
  public func encodeToDefaultsObject() -> Any {
    return self
  }
  
}
