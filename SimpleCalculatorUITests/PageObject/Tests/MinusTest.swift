//
//  MinusTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/27/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class MinusTest: BaseTest {
    func testMinus() {
        let calculator = Calculator()
                .enter(firstNumber)
                .minus(secondNumber)

        XCTAssertEqual(firstNumber - secondNumber, calculator.numberOnScreen)
    }

    func testMinusZero() {
        let calculator = Calculator()
                .minus(firstNumber)

        XCTAssertEqual(-firstNumber, calculator.numberOnScreen)
    }
}
