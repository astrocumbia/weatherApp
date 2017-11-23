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
  private let KEY = "73d2c071949a8c5d75ebffcc1338c190"
  static let shared: ApiClient = { return ApiClient() }()

  func getWeatherByZip(code: String, city: String, completion: @escaping (Weather?) -> Void) {
    let parameters: Parameters = ["zip":"\(code),\(city)","appid": KEY]
    
    let url = EndPoints.weather.url()
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
          let weather = Weather(dictionary: main)
          completion(weather)
        }
      case .failure(let error):
        print(error)
      }
      completion(nil)
    }
  }
  
  func getWeatherByCoords(lat: Float, lng: Float, completion: @escaping (Weather?) -> Void) {
    let parameters: Parameters = ["lat": lat,"lon": lng]
    let url = EndPoints.weather.url()
    let request = Alamofire.request(url,
                                    method: .get,
                                    parameters: parameters,
                                    encoding: URLEncoding.default,
                                    headers: nil)
    
    request.responseJSON { (response) in
      switch response.result {
      case .success:
        Logger.shared.info("Api, getWeater Success")
        if let data = response.result.value as? [String: Any],
          let main = data["main"] as? [String: Any] {
          let weather = Weather(dictionary: main)
          completion(weather)
        }
      case .failure(let error):
        print(error)
      }
      completion(nil)
    }
  }
}


