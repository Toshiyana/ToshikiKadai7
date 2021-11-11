//
//  SubtractionViewController.swift
//  7
//
//  Created by Toshiyana on 2021/11/11.
//

import UIKit

class SubtractionViewController: UIViewController {
    @IBOutlet private weak var numTextField1: UITextField!
    @IBOutlet private weak var numTextField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        numTextField1.keyboardType = .numberPad
        numTextField2.keyboardType = .numberPad
    }

    @IBAction private func subtractButtonPressed(_ sender: UIButton) {
        guard let num1 = Double(numTextField1.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }
        guard let num2 = Double(numTextField2.text ?? "") else {
            resultLabel.text = "数字を入力してください"
            return
        }

        resultLabel.text = String(num1 - num2)
        numTextField1.endEditing(true)
        numTextField2.endEditing(true)
    }
}
