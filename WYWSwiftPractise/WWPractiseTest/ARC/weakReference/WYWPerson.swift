//
//  WYWPerson.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/3/20.
//  Copyright © 2018年 WYW. All rights reserved.
//
//学习内容：swift4.0.3

import UIKit

class WYWPerson: NSObject {
    let name:String
    
    init(name:String) {
        self.name = name
    }
    
    var apartment:WYWApartment?
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}
