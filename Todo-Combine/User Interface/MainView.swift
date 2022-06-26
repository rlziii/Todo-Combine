import UIKit

class MainView: BaseView {
    let stackView = UIStackView(frame: .zero).autoLayout()
    let label = UILabel(frame: .zero).autoLayout()

    override init() {
        super.init()

        setupView()
        setupConstraints()
    }

    private func setupView() {
        stackView.axis = .vertical
        addSubview(stackView)

        label.text = "Hello, world!"
        stackView.addArrangedSubview(label)
    }

    private func setupConstraints() {
        stackView.constraintsCentered(in: self)
    }
}
