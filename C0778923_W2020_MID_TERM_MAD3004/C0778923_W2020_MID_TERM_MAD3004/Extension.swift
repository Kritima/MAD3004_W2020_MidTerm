//
//  Extension.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool{
        
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                
                let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
                return emailTest.evaluate(with: self)
            }
            
        
                   func isValidMobileNumber() -> Bool{
                      let phoneRegex = "[235689][0-9]{6}([0-9]{3})?"
                       let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
                       return  predicate.evaluate(with: self)
                   }
                  
               }
 
extension Float {
                func currency()-> String{
                                    return "$\(self)"
                 }
}
    
extension Int {
     func units()-> String{
                        return "\(self) Units"
     }
    
    func minutes()-> String{
        return "\(self) Minutes"
    }
    
    func internet()-> String{
        return "\(self) GB"
    }
}
    
extension Dictionary {
        func getCustomerById(i: String) {
            for (_, customer) in arrayCustomers {
                if (customer.getCustomerById() == i ) {
                    print(customer.display())
                }
                else
                {
                    print("Customer Not Found...")
                }
            }
        }
        
    }



