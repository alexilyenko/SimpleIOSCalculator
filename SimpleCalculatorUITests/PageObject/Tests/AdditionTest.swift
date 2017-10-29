//
//  AdditionTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/27/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class AdditionTest: BaseTest {
    func testPlus() {
        let calculator = Calculator()
                .enter(firstNumber)
                .plus(secondNumber)

        XCTAssertEqual(firstNumber + secondNumber, calculator.numberOnScreen)
    }
}
