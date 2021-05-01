//
//  PageObjectModels.swift
//  rorschach-exampleUITests
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import Foundation
import XCTest
import Rorschach

protocol PageObjectModel {
    var app: XCUIApplication { get }
}

// MARK: -

struct FirstView: PageObjectModel {
    let app: XCUIApplication

    func becomeInitialView() -> Step {
        Step("I am on the initial view") {
            app.launch()
        }
    }

    func navigateToSecondView() -> Step {
        Step("I navigate to the second view") {
            app.buttons["Navigate to Second View"].tap()
        }
    }
}

// MARK: -

struct SecondView: PageObjectModel {
    let app: XCUIApplication

    func isVisible() -> Assertion {
        Assertion("I can see the second screen") {
            XCTAssertTrue(app.staticTexts["Second View"].waitForExistence(timeout: 1))
        }
    }
}
