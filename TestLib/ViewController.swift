import UIKit
import TestLibCore

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        Tracker.standard.send(event: Self.identifier)
    }
}
