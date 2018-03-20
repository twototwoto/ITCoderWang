//
//  WYWApartment.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/3/20.
//  Copyright © 2018年 WYW. All rights reserved.
//

import UIKit

class WYWApartment: NSObject {
    let unit:String
    
    init(unit:String) {
        self.unit = unit
    }
    
    weak var tenant:WYWPerson?
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}
