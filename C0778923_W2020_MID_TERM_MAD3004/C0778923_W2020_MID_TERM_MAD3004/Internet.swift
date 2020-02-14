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
       var internetGbUsed: Float
    
    init(pName: String, gbUsed: Float) {
        self.providerName = pName
        self.internetGbUsed = gbUsed
        super.init(bId: billId, bDate: billDate, bType: billType, bAmount: billAmount)
    }
    
    override func display()
      {
          print("Provider Name: \(providerName)")
          print("Internet Usage: \(internetGbUsed)")
      }
       
    
}

