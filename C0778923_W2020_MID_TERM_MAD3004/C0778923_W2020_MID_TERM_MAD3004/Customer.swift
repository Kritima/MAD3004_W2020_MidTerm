//
//  Customer.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

class Customer: IDisplay {
    
  var customerId: String
   var firstName: String
    var lastName: String
    var fullName: String
       {
           return "\(firstName) \(lastName)"
       }
    var emailId: String
    var billsDict: [Bill]
    var totalBillAmount: Float!
    
    init(cId: String, fName: String, lName: String, eId: String, bdict: [Bill]) {
        self.customerId = cId
        self.firstName = fName
        self.lastName = lName
        self.emailId = eId
        self.billsDict = bdict
        self.totalBillAmount = calculateTotalAmount(billsDict: self.billsDict)
        
    }
    
   func display() {
        print("Customer Id: \(self.customerId)")
        print("Full Name: \(self.fullName)")
       print("Email Id: \(self.emailId)")
        print("---- Bill Information ----")
        for i in 0..<billsDict.count{
            print((billsDict[i].display()))
        }
        print("Total Bill Amount to Pay : \(String(describing: totalBillAmount!.currency()))")
    }
    
    func calculateTotalAmount(billsDict : [Bill])-> Float {
           var total : Float
           total=0.0
           for i in 0..<billsDict.count{
            total += billsDict[i].billAmount
           }
           return total;
       }
       
    
}
