import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButtonTapped(_ sender: Any) {
        guard let num1 = Double(number1TextField.text!) else {
            presentAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let num2 = Double(number2TextField.text!) else {
            presentAlert(message: "割る数を入力して下さい")
            return
        }

        guard num2 != 0 else { // num2 is 0
            presentAlert(message: "割る数に0を入力しないでください")
            return
        }
        let calculatedNum = num1 / num2
        resultLabel.text = String(calculatedNum)
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
}
