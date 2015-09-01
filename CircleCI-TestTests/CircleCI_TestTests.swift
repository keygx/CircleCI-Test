//
//  CircleCI_TestTests.swift
//  CircleCI-TestTests
//
//  Created by keygx on 2015/09/01.
//  Copyright (c) 2015年 keygx. All rights reserved.
//

import UIKit
import XCTest

class CircleCI_TestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAdd() {
        let vc = ViewController()
        //PAssert(vc.add(1, 1), ==, 2)
        XCTAssertEqual(vc.add(1, 1), 2, "1+1=2")
    }
}
