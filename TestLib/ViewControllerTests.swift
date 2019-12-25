import XCTest
@testable import TestLib
import TestLibCore

class TestLibTests: XCTestCase {

    class SpyTracker: Tracker {

        var sendCalledCount = 0
        var lastestEvent: String?

        override func send(tracker: Tracking = ShouldBeActualTracker.shared, event: String) {
            sendCalledCount += 1
            lastestEvent = event
        }
    }

    func testIsTrackingCorrectly() {
        let spy = SpyTracker()
        Tracker.standard = spy

        let controller = ViewController()
        controller.viewDidAppear(false)

        XCTAssertEqual(1, spy.sendCalledCount)
        XCTAssertEqual(ViewController.identifier, spy.lastestEvent)
    }

}
