//
//  AdditionTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/27/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class AdditionTest: BaseTest {
    private var calculator: Calculator? = nil

    func testPlus() {
        calculator = Calculator()
                .enter(firstNumber)
                .plus(secondNumber)

        XCTAssertEqual(firstNumber + secondNumber, calculator?.numberOnScreen)
    }

    func testAdditionBDD() {
        XCTContext.runActivity(named:
        "Given calculator application is launched") { _ in
            calculator = Calculator()
        }
        _ = XCTContext.runActivity(named:
        "When user adds \(firstNumber) and \(secondNumber)") { _ in
            calculator?
                    .enter(firstNumber)
                    .plus(secondNumber)
        }
        XCTContext.runActivity(named:
        "Then user should see a result on the screen") { _ in
            XCTAssertEqual(firstNumber + secondNumber,
                    calculator?.numberOnScreen)
        }
    }
}
