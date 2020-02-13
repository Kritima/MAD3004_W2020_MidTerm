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
    var billType: []
    var totalBillAmount: Float!
    
    init(bId: Int, bDate: Date, Product: [Product]) {
        self.billId = bId
        self.billDate = bDate
        self.billType = Product
        self.totalBillAmount = calculateTotalBill(products: self.product)
        
    }
    
    func display() {
        print("Bill Id: \(self.billId)")
        print("Bill Date: \(self.billDate)")
        print("Bill Type")
        for p in 0..<product.count{
            print((product[p].pName))
        }
        print("Bill Amount : \(String(describing: totalBillAmount!.currency()))")
    }
    
    func calculateTotlaOrder(products : [Product])-> Float {
        var total : Float
        total=0.0
        for p in 0..<product.count{
            total += product[p].price
        }
        return total;
    }
    
    func getOrderById() -> Int {
        return self.orderId
    }
    
}
