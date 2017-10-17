//
//  DefaultsCompatibleType.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

public protocol DefaultsCompatibleType {
  
  static func decodeValue(for defaultsObject: Any) -> Self?
  
  func encodeToDefaultsObject() -> Any
  
}
