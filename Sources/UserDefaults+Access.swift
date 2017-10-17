//
//  UserDefaults+Access.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import Foundation

extension UserDefaults {
  
  public final func read<T>(for key: DefaultsAccessKey<T>) -> T? {
    let reader = T.reader(for: self, key: key.key)
    return reader()
  }
  
  public final func write<T>(_ val: T?, for key: DefaultsAccessKey<T>) {
    let writer = T.writer(for: self, key: key.key)
    writer(val)
  }
  
}
