//
//  main.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation
do{
    
let hydro1 = Hydro(bId: "HYDB0001", bDate: Date.from(year: 2019, month: 2, day: 18)!, bType: BillType.Hydro, aName: "Planet Energy", uConsumed: 29)
    
let internet1 = Internet(bId: "INTB0001", bDate: Date(), bType: BillType.Internet, pName: "Rogers", gbUsed: 500)

let hydro2 = Hydro(bId: "HYDB0002", bDate: Date.from(year: 2019, month: 2, day: 18)!, bType: BillType.Hydro, aName: "Bruce Power", uConsumed: 29)

let mobile2 = try Mobile(bId: "MOBB0002", bDate: Date.from(year: 2019, month: 2, day: 18)!, bType: BillType.Mobile, mName: "Apple Inc. iPhone X MAX+" ,pName: "LTE+3G 9.5GB Promo plan", mNumber: "9012345678", gbUsed: 4, mUsed: 230)

let internet2 = Internet(bId: "INTB0002", bDate: Date.from(year: 2019, month: 2, day: 18)!, bType: BillType.Internet, pName: "Rogers", gbUsed: 500)

//var insurance = Insurance(bId: "INS0001", bDate: Date.from(year: 2019, month: 2, day: 18)!, bType: BillType.Property, iProviderName: "Aviva Canada Inc.", sDate: Date.from(year: 2003, month: 07, day: 07), eDate: <#T##Date#>)

let customer1 = try Customer(cId: "C0001", fName: "Pritish", lName: "Patel", eId: "amallabyg@topsy.com", bdict: [hydro1,internet1])

    let customer2 = try Customer(cId: "C0002", fName: "Vipul", lName: "Garg", eId: "adurrant1@github.io", bdict: [hydro2,mobile2,internet2])

let customer3 = try Customer(cId: "C0003", fName: "Anetta", lName: "Langrick", eId: "bgeillc@europa.eu", bdict: [])
    

//let customer4 = try Customer(cId: "C0004", fName: "Albert", lName: "Einstein", eId: "lovelyalbu@einstein.sun", bdict: [hydro2,mobile2,internet2])

    var arrayCustomers=[customer1.customerId: customer1,customer2.customerId: customer2,customer3.customerId: customer3]

for (_, customer) in arrayCustomers{
    print(customer.display())
}

//print("---Get Customer by id----")
//arrayCustomers.getCustomerById(i : "C0002")
//arrayCustomers.getCustomerById(i : "C0005")

let sortedByValueDictionary = arrayCustomers.sorted {
   $0.1.totalBillAmount < $1.1.totalBillAmount
}


print("----Sorted-----")
for (_, customer) in sortedByValueDictionary {

   print(customer.display())
}
}
catch BillError.InvalidEmail
{
    print("Invalid Email Id")
}
catch BillError.InvalidMobile
{
    print("Invalid Mobile Number")
}

