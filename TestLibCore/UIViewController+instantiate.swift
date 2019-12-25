import UIKit

// MARK: - Instantiable

public protocol Instantiable {

    static func instantiate() -> Self
}

extension Instantiable where Self: UIViewController {

    public static func instantiate() -> Self {
        return Self(nibName: nil, bundle: nil)
    }
}

extension UIViewController: Instantiable {}
