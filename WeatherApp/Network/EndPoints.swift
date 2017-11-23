//
//  EndPoints.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/22/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation

enum EndPoints {
  case weather
  
  fileprivate func host() -> String {
    return "http://api.openweathermap.org/data/2.5"
  }
  
  func url() -> URL {
    var path = ""
    
    switch self {
    case .weather:
      path = "/weather"
    }
    
    return URL(string: host() + path)!
  }
}
