//
//  ViewController.swift
//  WYWSwiftPractise
//
//  Created by WYW on 2018/2/6.
//  Copyright © 2018年 WYW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override class func initialize(){
//        
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hello world")
        
        var myVariable = 40
        myVariable = 20
        let myConstant = 10
        
        let implicitInteger = 70
        let implicitDouble = 20.0
        let explicitDouble:Double = 30.0
    print(myVariable,myConstant,implicitDouble,implicitInteger,explicitDouble);
        self.title = "title"
        self.view.backgroundColor = UIColor.red
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

