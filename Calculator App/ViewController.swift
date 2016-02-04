//
//  ViewController.swift
//  Calculator App
//
//  Created by student on 2016-02-04.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit
//hi

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber:Int? = 0
    var secondNumber:Int? = 0
    var operation:String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var calcDisplay: UILabel!
    
    @IBAction func numberTapped(sender: AnyObject) {
        var number:String? = sender.currentTitle!
        
        if isTypingNumber {
            calcDisplay.text = calcDisplay.text! + number!
        } else {
            calcDisplay.text = number
            isTypingNumber = true
        }
    }

    @IBAction func calculationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Int(calcDisplay.text!)
        operation = sender.currentTitle!
  
    }
    
    @IBAction func equlasTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calcDisplay.text!)
        
        if operation == "+" {
            result = firstNumber! + secondNumber!
        } else if operation == "-" {
            result = firstNumber! - secondNumber!
        } else if operation == "*" {
            result = firstNumber! * secondNumber!
        } else if operation == "/" {
            result = firstNumber! / secondNumber!
        }
        
        calcDisplay.text = "\(result)"
    }
    @IBAction func clearTapped(sender: AnyObject) {

    }
}

