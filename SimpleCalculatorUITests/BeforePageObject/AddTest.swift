//
// Created by Alex Ilyenko on 10/14/17.
// Copyright (c) 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class AddTest: XCTestCase {
    private let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func testPlus() {
        app.buttons["8"].tap()
        app.buttons["+"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()
        let result = Double(app.staticTexts.firstMatch.label)
        XCTAssertEqual(10.0, result, "Result should be equal to 10")
    }

    override func tearDown() {
        app.terminate()
    }
}
