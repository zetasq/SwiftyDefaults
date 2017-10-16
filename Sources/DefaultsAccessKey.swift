//
//  DefaultsAccessKey.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

public struct DefaultsAccessKey<T: DefaultsCompatibleType> {
  
  public let defaultKey: String
  
  init(defaultKey: String) {
    self.defaultKey = defaultKey
  }
  
}
