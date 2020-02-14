//
//  Hydro.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Hydro :Bill {
    var agencyName: String
    var unitConsumed: Int
    
 init(aName: String, uConsumed: Int) {
      self.agencyName = aName
      self.unitConsumed = uConsumed
    super.init(bId: billId, bDate: billDate, bType: billType, bAmount: calculateBillAmount(unitConsumed: <#T##Int#>))
  }
    
    func calculateBillAmount(unitConsumed: Int)-> Float {
              var total : Float
              total=0.0
        total = 45.35
              return total;
          }
    
  override func display()
  {
      print("Agency Name: \(agencyName)")
      print("Unit Consumed: \(unitConsumed)")
  }
    
}
