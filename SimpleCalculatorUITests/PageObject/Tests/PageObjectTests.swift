//
//  PageObjectTests.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 9/19/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class PageObjectTests: BaseTest {
    let firstNumber = Double(arc4random_uniform(1000))
    let secondNumber = Double(arc4random_uniform(1000))

    func testPlus() {
        let calculator = Calculator()
                .enter(firstNumber)
                .plus(secondNumber)

        XCTAssertEqual(firstNumber + secondNumber, calculator.numberOnScreen)
    }

    func testReset() {
        let calculator = Calculator()
                .enter(firstNumber)
                .reset()

        XCTAssertEqual(0.0, calculator.numberOnScreen)
    }

    func testMultiply() {
        let calculator = Calculator()
                .enter(firstNumber)
                .multiply(byNumber: secondNumber)

        XCTAssertEqual(firstNumber * secondNumber, calculator.numberOnScreen)
    }

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
