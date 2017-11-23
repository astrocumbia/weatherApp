//
//  Utils.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/22/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation

struct Utils {
  
  static func fromFarhnheitToCelcius(fahrenheit: Float) -> Float {
    let c = (fahrenheit - 32) * 5/9
    return (c*100).rounded() / 100
  }
  
  static func fromKelvinToCelcius(kelvin: Float) -> Float {
    let c = kelvin - 273.15
    return (c*100).rounded() / 100
  }
}
