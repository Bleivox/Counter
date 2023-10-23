//
//  ViewController.swift
//  Counter
//
//  Created by Никита Долгов on 20.10.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var historyOfCountingTextView: UITextView!
    @IBOutlet private weak var counterLabel: UILabel!
    
    
    private var firstNumber: Int = 0
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            counterLabel.text = "Значение счётчика: 0"
            historyOfCountingTextView.text = "История изменений:\n\n"
        }
    
    
    private func date() -> String {
       let date = Date()
       let format = DateFormatter()
       format.dateFormat = "yyyy-MM-dd HH:mm:ss"
       let dateString = format.string(from: date)
       return dateString
   }
    
    
    @IBAction private func counterButton(_ sender: Any) {
            firstNumber += 1
            counterLabel.text = "Значение счётчика: \(firstNumber)"
            historyOfCountingTextView.text.append("\(date()) : значение изменено на +1\n")
            }
    @IBAction private func minusCounterButton(_ sender: Any) {
        if firstNumber > 0 {
            firstNumber -= 1
            counterLabel.text = "Значение счётчика: \(firstNumber)"
            historyOfCountingTextView.text.append("\(date()) : значение изменено на -1\n")
        } else {
            historyOfCountingTextView.text.append("\(date()) : попытка уменьшить значение счётчика ниже 0\n")
        }
    }
    @IBAction private func resetCounterButton(_ sender: Any) {
        firstNumber = 0
        counterLabel.text = "Значение счётчика: \(firstNumber)"
        historyOfCountingTextView.text.append("\(date()) : значение сброшено\n")
    }
}

