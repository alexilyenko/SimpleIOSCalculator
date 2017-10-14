//
//  BaseTest.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 10/14/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    private let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .deleteOnSuccess
        add(fullScreenshotAttachment)
        app.terminate()
    }
}
