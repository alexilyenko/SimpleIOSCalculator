//
//  MultiplyTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/27/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class MultiplyTest: BaseTest {
    func testMultiply() {
        let calculator = Calculator()
                .enter(firstNumber)
                .multiply(byNumber: secondNumber)

        XCTAssertEqual(firstNumber * secondNumber, calculator.numberOnScreen)
    }
}
