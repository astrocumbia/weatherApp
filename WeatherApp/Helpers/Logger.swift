//
//  Logger.swift
//  WeatherApp
//
//  Created by Irvin  Castellanos on 11/21/17.
//  Copyright © 2017 Innku. All rights reserved.
//

import Foundation
import SwiftyBeaver

class Logger {
  static let shared: Logger = {Logger()}()
  let log: SwiftyBeaver.Type
  
  init() {
    let console = ConsoleDestination()
    
    console.format = "$DHH:mm:ss$d $L: $M"  // hour, minute, second, loglevel and message
    console.minLevel = .verbose // just log .info, .warning & .error
    
    log = SwiftyBeaver.self
    log.addDestination(console)
  }
  
  func verbose(_ content: Any) {
    log.verbose(content)
  }
  
  func debug(_ content: Any){
    log.debug(content)
  }
  
  func info(_ content: Any) {
    log.info(content)
  }
  
  func warning(_ content: Any) {
    log.warning(content)
  }
  
  func error(_ content: Any) {
    log.error(content)
  }
  
}
