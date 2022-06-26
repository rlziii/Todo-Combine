import UIKit

class BaseViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Called \(#function) on \(Self.self); use init() or a more appropriate initializer instead.")
    }
}
