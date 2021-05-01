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

            }
            Then("I can see the second screen") {

            }
        }
    }
}
