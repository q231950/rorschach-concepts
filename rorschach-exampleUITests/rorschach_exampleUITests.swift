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
    var firstView: FirstView?
    var secondView: SecondView?

    override func setUpWithError() throws {
        try super.setUpWithError()

        firstView = FirstView(app: app)
        secondView = SecondView(app: app)
    }

    func test_canNavigateToSecondView() throws {
        expect {
            Given {
                firstView?.becomeInitialView()
            }
            When {
                firstView?.navigateToSecondView()
            }
            Then {
                secondView?.isVisible()
            }
        }
    }

    func test_showsSameRandomCharacter() throws {
        var character: String?

        expect {
            Given {
                firstView?.becomeInitialView()
                firstView?.findRandomCharacter { character = $0 }
            }
            When {
                firstView?.navigateToSecondView()
            }
            Then {
                secondView?.showsRandomCharacter(character)
            }
        }
    }
}
