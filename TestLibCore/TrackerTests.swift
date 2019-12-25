import XCTest
@testable import TestLibCore

class TestLibCoreTests: XCTestCase {

    class SpyShouldBeActualTracker: ShouldBeActualTracker {

        var latestEvent: String?
        var sendCalledCount = 0

        override func send(event: String) {
            sendCalledCount += 1
            latestEvent = event
        }
    }

    func testCalledSend() {
        let spy = SpyShouldBeActualTracker()
        Tracker.standard.send(tracker: spy, event: "DUMMY")

        XCTAssertEqual(1, spy.sendCalledCount)
        XCTAssertEqual("DUMMY", spy.latestEvent)
    }
}
