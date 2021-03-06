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
    
    init(bId: String, bDate: Date, bType: BillType, aName: String, uConsumed: Int) {
      self.agencyName = aName
      self.unitConsumed = uConsumed
     super.init(bId:bId, bDate:bDate, bType:bType)
        super.billAmount = calculateBillAmount(unitConsumed:(self.unitConsumed))
  }
    
    func calculateBillAmount(unitConsumed: Int)-> Float {
              var total : Float
        let pricePerUnit = 0.5
              total=0.0
        total = Float(unitConsumed) * Float(pricePerUnit)
              return total;
          }
    
  override func display()
  {
     super.display()
      print("\t\tAgency Name: \(agencyName)")
      print("\t\tUnit Consumed: \(String(unitConsumed.units()))")
  }
    
}
