import XCTest

let app = XCUIApplication()

class BaseClass: XCTestCase {

    override func setUp() {
        self.continueAfterFailure = false
        super.setUp()
        launchApp()
    }

    func launchApp() {
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
    }

}
