//
//  ViewController.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/21/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

  @IBOutlet weak var stackView: UIStackView!
  @IBOutlet weak var infoLabel: UILabel!
  @IBOutlet weak var weatherLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    //ApiClient.init()
    
    ApiClient.shared.getWeatherByZip(code: "06700", city: "mx") { (response) in
      if let weather = response {
        let temp = Utils.fromKelvinToCelcius(kelvin: weather.temp)
        self.weatherLabel.text = "\(Int(round(temp)))º"
      }
    }
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

