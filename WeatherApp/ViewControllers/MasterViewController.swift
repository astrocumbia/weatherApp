//
//  MasterViewController.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/25/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
  
  var weathers = [Weather]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    loadData()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
  private func loadData() {
    let w = Weather(dictionary: ["temp_min": 19.0 as Float, "temp_max": 22.0 as Float, "temp": 20.0 as Float])
    for time in 0...5 {
        weathers.append(Weather(dictionary: ["temp_min": 19.0 as Float, "temp_max": 22.0 as Float, "temp": 20.0 as Float]))
    }
  }
  
}

// MARK: - UITableViewDataSource
extension MasterViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.weathers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCellView", for: indexPath) as? WeatherTableViewCell
    let weather = weathers[indexPath.row]
    
    // Databinding
    cell?.cityLabel.text = "CDMX"
    cell?.tempLabel.text = String(weather.temp)
    cell?.minTempLabel.text = String(weather.tempMin)
    cell?.maxTempLabel.text = String(weather.tempMax)
    
    return cell!
  }
  
}
