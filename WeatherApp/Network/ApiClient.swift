//
//  Api.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/21/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation
import Alamofire

final class ApiClient {
  static let shared: ApiClient = { return ApiClient() }()

  func getWeather() {
    let parameters: Parameters = ["zip":"06700,mx", "appid": "73d2c071949a8c5d75ebffcc1338c190"]
    let url = "http://api.openweathermap.org/data/2.5/weather"
    let request = Alamofire.request(url, method: .get,
                                   parameters: parameters,
                                   encoding: URLEncoding.default,
                                   headers: nil)
    
    request.responseJSON { (response) in
      switch response.result {
      case .success:
        Logger.shared.info("Api, getWeater Success")
        if let data = response.result.value as? [String: Any],
          let main = data["main"] as? [String: Any] {
          main.forEach({ (entry) in
            print("--> entry \(entry)")
          })
        }
      case .failure(let error):
        print(error)
      }
    }
  }
}


