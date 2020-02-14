//
//  Hydro.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Hydro :IDisplay{
    var agencyName: String
    var unitConsumed: Float
    
 init(aName: String, uConsumed: Float) {
      self.agencyName = aName
      self.unitConsumed = uConsumed
  }
    
  func display() {
      print("Agency Name: \(agencyName)")
      print("Unit Consumed: \(unitConsumed)")
  }
    
}
