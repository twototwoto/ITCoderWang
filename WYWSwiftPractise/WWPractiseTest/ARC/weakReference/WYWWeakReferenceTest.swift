//
//  WYWWeakReferenceTest.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/3/20.
//  Copyright © 2018年 WYW. All rights reserved.
//

import UIKit

class WYWWeakReferenceTest: NSObject {
    
    func test() {
        var john : WYWPerson?
        var unit4A : WYWApartment?
        john = WYWPerson(name:"John Appleseed")
        unit4A = WYWApartment(unit:"4A")
        
        john!.apartment = unit4A
        unit4A!.tenant = john
        //在相互引用了对方的类中有一方使用了weak 修饰符的时候 才能够打断循环引用 否则即使在下边设置某一者为nil也不管用
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2.0) {
//            unit4A = nil
//            john = nil
//        }
        
    }
    
    
}
