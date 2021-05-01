//
//  rorschach_exampleUITests.swift
//  rorschach-exampleUITests
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import XCTest
import Rorschach

class rorschach_exampleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        let app = XCUIApplication()

        expect {
            Given("I am on the initial screen") {
                app.launch()
            }
            When("I navigate to the second screen") {
                app.buttons["Navigate to Second View"].tap()
            }
            Then("I can see the second screen") {
                XCTAssertTrue(app.staticTexts["Second View"].waitForExistence(timeout: 1))
            }
        }
    }
}
