//
//  rorschach_exampleUITests.swift
//  rorschach-exampleUITests
//
//  Created by Martin Kim Dung-Pham on 01.05.21.
//

import XCTest
import Rorschach

class rorschach_exampleUITests: XCTestCase {

    let app = XCUIApplication()

    func testExample() throws {
        let firstView = FirstView(app: app)
        let secondView = SecondView(app: app)

        expect {
            Given {
                firstView.becomeInitialView()
            }
            When {
                firstView.navigateToSecondView()
            }
            Then {
                secondView.isVisible()
            }
        }
    }
}
