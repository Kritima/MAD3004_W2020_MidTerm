//
//  Bill.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Bill: IDisplay {
   
    var billId: Int
       var billDate: Date
       var billType: String
       var billAmount: Float!
       
    init(bId: Int, bDate: Date, bType: String, bAmount: Float) {
           self.billId = bId
           self.billDate = bDate
           self.billType = bType
        self.billAmount = bAmount
           
       }
    
       func display() {
                print("Bill Id: \(self.billId)")
                print("Bill Date: \(self.billDate)")
                print("Bill Type: \(self.billType)")
                print("Bill Amount : \(String(describing: billAmount!.currency()))")
            }
    
    
}
