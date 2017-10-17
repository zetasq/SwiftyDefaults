//
//  ReadWriteTests.swift
//  SwiftyDefaults
//
//  Created by Zhu Shengqi on 16/10/2017.
//

import XCTest
@testable import SwiftyDefaults

class ReadWriteTests: XCTestCase {
  
  func testString() {
    let key = DefaultsAccessKey<String>(key: "stringKey")
    UserDefaults.standard.write("stringVal", for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == "stringVal")
  }
  
  func testBool() {
    let key = DefaultsAccessKey<Bool>(key: "boolKey")
    UserDefaults.standard.write(true, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == true)
  }
  
  func testInt() {
    let key = DefaultsAccessKey<Int>(key: "intKey")
    UserDefaults.standard.write(128, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == 128)
  }
  
  func testFloat() {
    let key = DefaultsAccessKey<Float>(key: "floatKey")
    UserDefaults.standard.write(64.0, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == 64.0)
  }
  
  func testDouble() {
    let key = DefaultsAccessKey<Double>(key: "doubleKey")
    UserDefaults.standard.write(1024.0, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == 1024.0)
  }
  
  func testURL() {
    let key = DefaultsAccessKey<URL>(key: "urlKey")
    UserDefaults.standard.write(URL(string: "www.google.com")!, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == URL(string: "www.google.com")!)
  }
  
  func testData() {
    let bytes: [UInt8] = [0xFF, 0xAA]
    let data = Data(bytes)
    let key = DefaultsAccessKey<Data>(key: "dataKey")
    UserDefaults.standard.write(data, for: key)
    XCTAssert(UserDefaults.standard.read(for: key) == data)
  }

}

