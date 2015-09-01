//
//  ViewController.swift
//  CircleCI-Test
//
//  Created by keygx on 2015/09/01.
//  Copyright (c) 2015年 keygx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(add(1, 1))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func add(a: Int, _ b: Int) -> Int {
        return a + b
    }
}

