import UIKit

public protocol Identifiable {

    static var identifier: String { get }
}

extension Identifiable {

    public static var identifier: String {
        return String(describing: self)
    }
}

extension UIViewController: Identifiable {}