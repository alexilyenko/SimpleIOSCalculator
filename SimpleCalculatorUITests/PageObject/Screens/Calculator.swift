//
//  Calculator.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/14/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class Calculator: BaseScreen {
    private lazy var plusButton = buttons["+"].firstMatch
    private lazy var multiplyButton = buttons["*"].firstMatch
    private lazy var equalButton = buttons["="].firstMatch
    private lazy var resetButton = buttons["AC"].firstMatch
    private lazy var minusButton = buttons["-"].firstMatch
    private lazy var screen = findAll(.staticText).firstMatch
    private lazy var buttons = findAll(.button)

    var numberOnScreen: Double? {
        return Double(screen.label)
    }

    func enter(_ number: Double) -> Calculator {
        inputNumber(number)
        return self
    }

    func plus(_ number: Double) -> Calculator {
        return calculate(number, plusButton)
    }

    func multiply(byNumber: Double) -> Calculator {
        return calculate(byNumber, multiplyButton)
    }

    private func inputNumber(_ number: Double) {
        for ch in String(number) {
            buttons[String(ch)].tap()
        }
    }

    func reset() -> Calculator {
        resetButton.tap()
        return self
    }

    func minus(_ number: Double) -> Calculator {
        return calculate(number, minusButton)
    }

    private func calculate(_ number: Double, _ operationButton: XCUIElement) -> Calculator {
        operationButton.tap()
        inputNumber(number)
        equalButton.tap()
        return self
    }

}
