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
    var planName: String
          var mobileNumber: String
          var internetGbUsed: Int
        var minuteUsed: Int
    
    //init() {
      //  super.init()
   // }
       
    init(bId: String, bDate: Date, bType: BillType, mName: String,pName: String, mNumber: String, gbUsed: Int, mUsed: Int) throws{
           if !mNumber.isValidMobileNumber(){
               throw BillError.InvalidMobile
           }
         self.mobileModelName = mName
         self.mobileNumber = mNumber
        self.planName = pName
         self.internetGbUsed = gbUsed
         self.minuteUsed = mUsed
        super.init(bId: bId, bDate: bDate, bType: bType)
        super.billAmount = calculateBillAmount(gbUsed:(self.internetGbUsed), mUsed: self.minuteUsed)
        
           
       }
    
    func calculateBillAmount(gbUsed: Int, mUsed: Int)-> Float {
           var total : Float
        let pricePerGb = 5
        let pricePerMinue = 0.8
           total=0.0
        total = Float (pricePerGb) * Float (gbUsed) + Float(pricePerMinue) * Float (mUsed)
           return total;
       }
         
    override func display()
             {
                super.display()
                 print("Manufacturer Name: \(mobileModelName)")
                print("Plan Name: \(planName)")
                 print("Mobile Number: \(mobileNumber)")
                print("Internet Usage: \(String(describing: internetGbUsed.internet()))")
               print("Minutes Usage: \(String(describing: minuteUsed.minutes()))")
             }
       
    
}
