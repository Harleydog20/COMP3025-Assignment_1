//
//  ViewController.swift
//  Calculator App
//
//  Created by Robert Thomas on 2016-02-04.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit
//hi hello

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber:Float? = 0
    var secondNumber:Float? = 0
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
        let num:String? = sender.currentTitle! //store the user input as a string
        //if the user is still entering numbers (i.e. 23) append it to the other number
        if isTypingNumber {
            calcDisplay.text = calcDisplay.text! + num!
        } else {
            //else number is done being input
            calcDisplay.text = num
            isTypingNumber = true
        }
    }

    @IBAction func calculationTapped(sender: AnyObject) {
        //first number is entered
        isTypingNumber = false
        //turn the first number into a float
        firstNumber = Float(calcDisplay.text!)
        //get the operator
        operation = sender.currentTitle!
  
    }
    
    @IBAction func equlasTapped(sender: AnyObject) { //calculate the result
        isTypingNumber = false //no more inputs
        var result:Float = 0 //answer
        secondNumber = Float(calcDisplay.text!) //convert the second num to a float
        
        //find what operation to use
        if operation == "+" {
            result = firstNumber! + secondNumber!
        } else if operation == "-" {
            result = firstNumber! - secondNumber!
        } else if operation == "*" {
            result = firstNumber! * secondNumber!
        } else if operation == "/" {
            result = firstNumber! / secondNumber!
        }
        //display the result
        calcDisplay.text = "\(result)"
    }
    @IBAction func clearTapped(sender: AnyObject) { //clear the lable and the vars
        isTypingNumber = false
        firstNumber = 0
        secondNumber = 0
        operation = ""
        calcDisplay.text = "0"
    }
}

