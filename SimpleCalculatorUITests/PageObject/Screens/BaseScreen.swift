//
//  BaseScreen.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/14/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

protocol BaseScreen {
}

extension BaseScreen {
    func findAll(_ type: XCUIElement.ElementType) -> XCUIElementQuery {
        return app.descendants(matching: type)
    }

    func step(_ name: String, block: (XCTActivity) -> Void) {
        XCTContext.runActivity(named: name, block: block)
    }

    var app: XCUIApplication {
        return XCUIApplication()
    }
}
