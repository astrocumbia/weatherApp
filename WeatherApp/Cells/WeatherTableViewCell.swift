//
//  WeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/25/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation
import UIKit

class WeatherTableViewCell: UITableViewCell {
  
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var tempLabel: UILabel!
  @IBOutlet weak var maxTempLabel: UILabel!
  @IBOutlet weak var minTempLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}
