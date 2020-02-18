//
//  Internet.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Internet :Bill {
    
       var providerName: String
       var internetGbUsed: Int
    
    init(bId: String, bDate: Date, bType: BillType, pName: String, gbUsed: Int) {
        self.providerName = pName
        self.internetGbUsed = gbUsed
        super.init(bId: bId, bDate: bDate, bType: bType)
        super.billAmount = calculateBillAmount(gbUsed:(self.internetGbUsed))
    }

    
    func calculateBillAmount(gbUsed: Int)-> Float {
              var total : Float
        let pricePerGb = 0.15
              total=0.0
        total = Float (pricePerGb) * Float(gbUsed) 
              return total;
          }
    
    override func display()
      {
          super.display()
          print("Provider Name: \(providerName)")
          print("Internet Usage: \(String(describing: internetGbUsed.internet()))")
      }
       
    
}

