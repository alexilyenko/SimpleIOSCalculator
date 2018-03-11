//
//  XCUIElement.swift
//  SimpleCalculatorUITests
//
//  Created by Alex Ilyenko on 12/14/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import XCTest
import Foundation

extension XCUIElement {
    var details: String {
        let regex = try! NSRegularExpression(pattern: "0x\\S+", options: .caseInsensitive)
        return regex.stringByReplacingMatches(in: debugDescription, options: [], range: NSMakeRange(0, debugDescription.count), withTemplate: "")
    }
}
