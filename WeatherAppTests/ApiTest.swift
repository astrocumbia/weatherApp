//
//  ApiTest.swift
//  WeatherAppTests
//
//  Created by Irvin  Castellanos on 11/22/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import XCTest
@testable import WeatherApp

class ApiTest: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
      ApiClient.shared.getWeatherByZip(code: "06700", city: "mx") { (response) in
        XCTAssertNotNil(response)
      }
    }
  }
  
  func testWeatherPerformanceExample() {
    self.measure {
      ApiClient.shared.getWeatherByCoords(lat:19.4326, lng:99.1332) { (response) in
        print("---> \(response)")
        XCTAssertNotNil(response)
      }
    }
  }
  
  func testConverter() {
    let result = Utils.tempToCelcius(fahrenheit: 100)
    XCTAssertEqual(result, 37.78)
  }
}
