//
//  Bill.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Bill: IDisplay {
   
    var billId: String
       var billDate: Date
       var billType: BillType
       var billAmount: Float!
       
    init(bId: String, bDate: Date, bType: BillType) {
           self.billId = bId
           self.billDate = bDate
           self.billType = bType
           
       }
    
       func display() {
                print("\t\t******************************************")
                print("\t\tBill Id: \(self.billId)")
        print("\t\tBill Date: \(self.billDate.getForamttedDate())")
                print("\t\tBill Type: \(self.billType)")
                print("\t\tBill Amount : \(String(describing: billAmount!.currency()))")
            }

    
    
}
