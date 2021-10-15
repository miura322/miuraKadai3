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
        let result: String

        switch switch1.isOn {
        case true:
            if switch2.isOn == true {
                result = String(-num1 - num2)
                numberLabel1.text = "-\(num1)"
                numberLabel2.text = "-\(num2)"
            } else {
                result = String(-num1 + num2)
                numberLabel1.text = "-\(num1)"
                numberLabel2.text = "\(num2)"
            }
        default:
            if switch2.isOn == true {
                result = String(num1 - num2)
                numberLabel1.text = "\(num1)"
                numberLabel2.text = "-\(num2)"
            } else {
                result = String(num1 + num2)
                numberLabel1.text = "\(num1)"
                numberLabel2.text = "\(num2)"
            }
        }
        resultLabel.text = result

    }

}

