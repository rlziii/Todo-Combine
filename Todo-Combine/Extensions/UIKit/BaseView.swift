import UIKit

class BaseView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .systemBackground
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Called \(#function) on \(Self.self); use init() or a more appropriate initializer instead.")
    }
}
