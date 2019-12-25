public protocol Tracking {

    func send(event: String)
}

public class Tracker {

    public static let standard = Tracker()

    public func send(tracker: Tracking = ShouldBeActualTracker.shared, event: String) {
        tracker.send(event: "\(event)")
    }
}

public class ShouldBeActualTracker {

    public static let shared = ShouldBeActualTracker()

    public func send(event: String) {
        print("send \(event)")
    }
}

extension ShouldBeActualTracker: Tracking {}
