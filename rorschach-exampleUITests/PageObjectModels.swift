//
//  PageObjectModels.swift
//  rorschach-exampleUITests
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import Foundation
import XCTest
import Rorschach
@testable import rorschach_example

protocol PageObjectModel {
    var app: XCUIApplication { get }
}

// MARK: -

struct FirstView {
    let app: XCUIApplication

    func becomeInitialView() -> Step {
        Step("I am on the initial view") {
            self.app.launch()
            XCTAssertTrue(self.app.staticTexts["First View"].waitForExistence(timeout: 1))
        }
    }

    func findRandomCharacter(character: @escaping (String) -> Void) -> Step {
        Step("I am reading the random character") {
            character(self.app.staticTexts["random"].label)
        }
    }

    func navigateToSecondView() -> Step {
        Step("I navigate to the second view") {
            self.app.buttons["Navigate to Second View"].tap()
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

    func showsRandomCharacter(_ character: String?) -> Assertion {
        Assertion("I can see the random character (\(character ?? ""))") {
            XCTAssertTrue(app.staticTexts["random: \(character ?? "")"].waitForExistence(timeout: 1))
        }
    }
}
