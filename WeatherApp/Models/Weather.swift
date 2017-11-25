//
//  Weather.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/21/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation

struct Weather {
  let tempMin: Float
  let tempMax: Float
  let temp: Float
  let groundLevel: Float
  let seaLevel: Float
  let pressure: Float
  let humidity: Float
  
  init(dictionary: [String: Any]) {
    tempMin = dictionary["temp_min"] as? Float ?? 0.0
    tempMax = dictionary["temp_max"] as? Float ?? 0.0
    temp = dictionary["temp"] as? Float ?? 0.0
    groundLevel = dictionary["grnd_level"] as? Float ?? 0.0
    seaLevel = dictionary["sea_level"] as? Float ?? 0.0
    pressure = dictionary["pressure"] as? Float ?? 0.0
    humidity = dictionary["humidity"] as? Float ?? 0.0
  }

}
