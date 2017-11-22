//
//  ApiClientTest.swift
//  WeatherAppTests
//
//  Created by Irvin  Castellanos on 11/21/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import XCTest
@testable import WeatherApp

class ApiClientTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        ApiClient.init()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  
  func testGetWeather() {
    ApiClient.shared.getWeatherByZip(code: "06700", city: "mx") { (response) in
      XCTAssertNil(response)
    }
  }
    
}
