import XCTest
@testable import TestLibCore

class ViewControllerIdentifierTests: XCTestCase {

    class MyCustomClassNameViewController: UIViewController {}

    func testIdentifier() {
        XCTAssertEqual("UIViewController", UIViewController.identifier)
        XCTAssertEqual("MyCustomClassNameViewController", MyCustomClassNameViewController.identifier)
    }
}
