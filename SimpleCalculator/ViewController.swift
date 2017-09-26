//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Alex Ilyenko on 9/19/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    private var firstNumber: Double = 0.0
    private var symbol: String = ""
    private var isSymbolPressed: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressNumber(_ sender: UIButton) {
        let buttonText = sender.titleLabel?.text!
        let labelText = resultLabel.text!
        if buttonText == "." && labelText.contains(".") {
            return
        }
        if isSymbolPressed {
            resultLabel.text = buttonText
            isSymbolPressed = false
            return
        }
        resultLabel.text =
                "\((Double(labelText) != 0.0 || labelText.contains(".") || buttonText == ".") ? labelText : "")" +
                        "\(buttonText!)"
    }

    @IBAction func pressSymbol(_ sender: UIButton) {
        firstNumber = Double(resultLabel.text!)!
        symbol = (sender.titleLabel?.text)!
        isSymbolPressed = true
    }

    @IBAction func pressReset(_ sender: UIButton) {
        resultLabel.text = String(0)
        firstNumber = 0.0
        symbol = ""
        isSymbolPressed = false
    }

    @IBAction func pressCalculate(_ sender: UIButton) {
        let secondNumber = Double(resultLabel.text!)!
        let result = calculate(secondNumber)
        resultLabel.text = String(result)
        firstNumber = 0.0
        symbol = ""
        isSymbolPressed = true
    }

    private func calculate(_ secondNumber: Double) -> Double {
        switch symbol {
        case "+": return firstNumber + secondNumber
        case "-": return firstNumber - secondNumber
        case "*": return firstNumber * secondNumber
        case "/": return firstNumber / secondNumber
        default: return Double(resultLabel.text!)!
        }
    }
}
