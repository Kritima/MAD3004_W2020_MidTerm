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
                print("******************************************")
                print("Bill Id: \(self.billId)")
                print("Bill Date: \(self.billDate)")
                print("Bill Type: \(self.billType)")
                print("Bill Amount : \(String(describing: billAmount!.currency()))")
            }
    
    func getCurrentDate()-> String{
           let calendar = Calendar.current

           let day = calendar.component(.day, from: Date())
           let month = calendar.component(.month, from: Date())
           let year = calendar.component(.year, from: Date())
           return "\(month),\(day),\(year)"
       }
    
    
}
