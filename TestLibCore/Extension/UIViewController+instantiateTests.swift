import XCTest
@testable import TestLibCore

class ViewControllerInstantiateTests: XCTestCase {

    func testInstantiable() {
        XCTAssertNotNil(UIViewController.instantiate())
    }

}
