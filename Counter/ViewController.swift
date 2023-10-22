//
//  ViewController.swift
//  Counter
//
//  Created by Никита Долгов on 20.10.23.
//

import UIKit

func date() -> String {
    let date = Date()
    let format = DateFormatter()
    format.dateFormat = "yyyy-MM-dd HH:mm:ss"
    let dateString = format.string(from: date)
    return dateString
}


class ViewController: UIViewController {
    var firstNumber: Int = 0
    @IBOutlet weak var historyOfCounting: UITextView!
    @IBOutlet weak var counter: UILabel!
    @IBAction func counterButton(_ sender: Any) {
        firstNumber += 1
        counter.text = "Значение счётчика: \(firstNumber)"
        historyOfCounting.text.append("\(date()) : значение изменено на +1\n")
        }
    
    @IBAction func minusCounterButton(_ sender: Any) {
        if firstNumber > 0 {
            firstNumber -= 1
            counter.text = "Значение счётчика: \(firstNumber)"
            historyOfCounting.text.append("\(date()) : значение изменено на -1\n")
        } else {
            historyOfCounting.text.append("\(date()) : попытка уменьшить значение счётчика ниже 0\n")
        }
            
        
    }
    @IBAction func resetCounterButton(_ sender: Any) {
        firstNumber = 0
        counter.text = "Значение счётчика: \(firstNumber)"
        historyOfCounting.text.append("\(date()) : значение сброшено\n")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: 0"
        historyOfCounting.text = "История изменений:\n\n"
    }
    
}

