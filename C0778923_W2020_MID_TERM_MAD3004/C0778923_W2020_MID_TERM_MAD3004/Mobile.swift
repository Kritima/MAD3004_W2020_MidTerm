//
//  Mobile.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Mobile :Bill {
    
     var mobileModelName: String
          var mobileNumber: String
          var internetGbUsed: Int
        var minuteUsed: Int
    
    init() {
       }
       
       init?(mName: String, mNumber: String, gbUsed: Int, mUsed: Int) throws{
           if !mNumber.isValidMobileNumber(){
               throw MobileError.Invalid("Invalid Mobile Number")
           }
         self.mobileModelName = mName
         self.mobileNumber = mNumber
         self.internetGbUsed = gbUsed
         self.minuteUsed = mUsed
        super.init(bId: billId, bDate: billDate, bType: billType, bAmount: billAmount)
           
       }
         
    override func display()
             {
                 print("Manufacturer Name: \(mobileModelName)")
                 print("Mobile Number: \(mobileNumber)")
                print("Internet Usage: \(internetGbUsed)")
               print("Minutes Usage: \(minuteUsed)")
             }
       
    
}
