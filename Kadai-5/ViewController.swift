import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var countTextField1: UITextField!
    @IBOutlet private weak var countTextField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButtonTapped(_ sender: Any) {
        guard let num1 = Double(countTextField1.text!) else {
          alert(message: "割られる数を入力して下さい")
         return
        }

        guard let num2 = Double(countTextField2.text!) else {
            alert(message: "割る数を入力して下さい")
            return
        }

        guard num2 != 0 else { // num2 is 0
            alert(message: "割る数に0を入力しないでください")
            return
        }
          let calculated = num1 / num2
          resultLabel.text = String(calculated)
    }

    private func alert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
}
