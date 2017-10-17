//
//  UserDefaults+Access.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

extension UserDefaults {
  
  public final func read<T>(for key: DefaultsAccessKey<T>) -> T? {
    if let defaultsObj = self.object(forKey: key.key) {
      return T.decodeValue(for: defaultsObj)
    } else {
      return nil
    }
  }
  
  public final func write<T>(_ val: T?, for key: DefaultsAccessKey<T>) {
    self.set(val?.encodeToDefaultsObject(), forKey: key.key)
  }
  
}
