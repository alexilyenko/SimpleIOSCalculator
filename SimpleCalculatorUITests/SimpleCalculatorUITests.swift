//
//  SimpleCalculatorUITests.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 9/19/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class SimpleCalculatorUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func test() {
    }

    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .keepAlways
        add(fullScreenshotAttachment)
        app.terminate()
    }
}
