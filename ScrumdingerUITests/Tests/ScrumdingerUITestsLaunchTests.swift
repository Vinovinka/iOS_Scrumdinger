import XCTest

class ScrumdingerLaunchTests: BaseClass {

    func testLaunchApp() {
        XCTAssert(app.buttons["New Scrum"].isEnabled)
    }
}
