//
//  ViewController.swift
//  kadai3
//
//  Created by 三浦桃哉 on 2021/10/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    @IBOutlet private weak var numberLabel1: UILabel!
    @IBOutlet private weak var numberLabel2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func pressButton(_ sender: Any) {
        let num1 = Int(textField1.text!) ?? 0
        let num2 = Int(textField2.text!) ?? 0

        let signedNum1 = switch1.isOn ? -num1 : num1
        let signedNum2 = switch2.isOn ? -num2 : num2

        numberLabel1.text = String(signedNum1)
        numberLabel2.text = String(signedNum2)

        resultLabel.text = String(signedNum1 + signedNum2)
    }

}

