//
//  ResetTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/27/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class ResetTest: BaseTest {
    func testReset() {
        let calculator = Calculator()
                .enter(firstNumber)
                .reset()
        XCTAssertEqual(0.0, calculator.numberOnScreen)
    }
}
