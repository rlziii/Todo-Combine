import UIKit

extension UIView {
    func autoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

extension UIView {
    func constraintsCentered(in otherView: UIView) {
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: otherView.centerXAnchor),
            centerYAnchor.constraint(equalTo: otherView.centerYAnchor),
        ])
    }
}

extension UIView {
    func constraintsSnapped(to otherView: UIView, withSafeArea: Bool = false) {
        if withSafeArea {
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: otherView.safeAreaLayoutGuide.topAnchor),
                leadingAnchor.constraint(equalTo: otherView.safeAreaLayoutGuide.leadingAnchor),
                bottomAnchor.constraint(equalTo: otherView.safeAreaLayoutGuide.bottomAnchor),
                trailingAnchor.constraint(equalTo: otherView.safeAreaLayoutGuide.trailingAnchor),
            ])
        } else {
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: otherView.topAnchor),
                leadingAnchor.constraint(equalTo: otherView.leadingAnchor),
                bottomAnchor.constraint(equalTo: otherView.bottomAnchor),
                trailingAnchor.constraint(equalTo: otherView.trailingAnchor),
            ])
        }
    }
}
