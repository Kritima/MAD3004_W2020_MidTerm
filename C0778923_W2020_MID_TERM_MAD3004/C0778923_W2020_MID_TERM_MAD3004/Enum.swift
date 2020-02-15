//
//  Enum.swift
//  C0778923_W2020_MID_TERM_MAD3004
//
//  Created by Kritima Kukreja on 2020-02-13.
//  Copyright © 2020 Kritima Kukreja. All rights reserved.
//

import Foundation

enum MobileError: Error{
    case Invalid(String)
}

enum BillType: String{
    case Hydro
    case Mobile
    case Internet
}

enum InsuranceType: String{
    case Life
    case Health
    case Car
    case Property
}
