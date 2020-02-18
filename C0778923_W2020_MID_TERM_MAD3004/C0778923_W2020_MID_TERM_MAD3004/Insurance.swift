//
//  Insurance.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

/*import Foundation

class Insurance :Bill {
    
    var insuranceProviderName: String
      var startDate: Date
    var endDate: Date
    var totalDays: Int
    var totalInstallmentToPay: Float

    init(bId: String, bDate: Date, bType: BillType, iProviderName: String, sDate: Date, eDate: Date) {
    self.insuranceProviderName = iProviderName
     self.startDate = sDate
     self.endDate = eDate
        totalDays = calculateTotalDays(start: self.startDate, end: self.endDate)
        self.totalInstallmentToPay = calculateInstallmentAmount(totalDays: self.totalDays)
        super.init(bId:bId, bDate:bDate, bType:bType)
          super.billAmount = calculateBillAmount(totalInstallmentToPay: (self.totalInstallmentToPay))

  }
    
   func calculateTotalDays(start: Date, end: Date) -> Int {
                return Calendar.current.dateComponents([.day], from: start, to: end).day!
            }
    
    func calculateInstallmentAmount(totalDays: Int)-> Float {
                   var total : Float
           let principal = 100
           let rate = 0.13
                   total=0.0
             total = Float (principal) * Float (rate) * Float (totalDays)
                   return total;
               }
    
    func calculateBillAmount(totalInstallmentToPay: Float)-> Float {
          var total : Float
    let noOfDays = 12
          total=0.0
    total = Float(totalInstallmentToPay) / Float(noOfDays)
          return total;
      }
    
      
    override func display()
    {
       super.display()
        print("Provider Name: \(insuranceProviderName)")
        print("Start Date: \(startDate)")
        print("End Date: \(endDate)")
        print("Insurance In Days: \(totalDays)")
        print("Total Installement To Pay : \(totalInstallmentToPay)")
    }
    
}
 */
 


