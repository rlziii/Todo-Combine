import UIKit

class MainViewController: BaseViewController {
    private let contentView = MainView()

    override func loadView() {
        view = contentView
    }
}
