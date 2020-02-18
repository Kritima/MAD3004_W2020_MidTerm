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
      var insuranceType: InsuranceType
      var startDate: Date
    var endDate: Date
    var totalDays: Int
    var totalInstallmentToPay: Float

init(bId: String, bDate: Date, bType: BillType, iProviderName: String, iType: InsuranceType, sDate: Date, eDate: Date  ) {
      self.insuranceProviderName = iProviderName
      self.insuranceType = iType
     self.startDate = sDate
    self.endDate = eDate
    totalDays = calculateTotalDays(start: startDate, end: endDate)
     super.init(bId:bId, bDate:bDate, bType:bType)
        super.billAmount = calculateInstallmentAmount(totalDays: (self.totalDays))
  }
    
   func calculateTotalDays(start: Date, end: Date) -> Int {
                return Calendar.current.dateComponents([.day], from: start, to: end).day!
            }
      
    func calculateInstallmentAmount(totalDays: Int)-> Float {
                var total : Float
                total=0.0
          total = 45.35
                return total;
            }
      
    override func display()
    {
       super.display()
        print("Provider Name: \(insuranceProviderName)")
        //print("Unit Consumed: \(unitConsumed)")
    }
    
}
 */


