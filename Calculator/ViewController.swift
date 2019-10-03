//  ViewController.swift
//  File Name : calculator.xcodeproj
//  Created by Maria Metrina on 2019-09-30.
//  Student ID : 301089997
//  App description : Calculator for basic arithmetic operations
//  Version : 1.0
//  Copyright © 2019 CentennialCollege. All rights reserved.

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var lblValue: UILabel!
  
    //variables are declared and initialised here
    var firstValue = "0"
    var secondValue = "0"
    var operatorValue = ""
    var isPositive = true
    
 // Do any additional setup after loading the view.
    override func viewDidLoad()
    {
        super.viewDidLoad()
        firstValue = "0"
        secondValue = "0"
        lblValue.text = firstValue
    }
    
    //function to clear the screen
    
    @IBAction func clearClicked(_ sender: Any)
    {
        firstValue = "0"
        secondValue = "0"
        lblValue.text = firstValue
        operatorValue = ""
    }
    
    //function to set +ve or -ve symbol
    
    @IBAction func negativePositiveClicked(_ sender: Any)
    {

    }
    
    //function to find percentage
    
    @IBAction func percentageClick(_ sender: Any)
    {
        if operatorValue == ""
        {

                let val1 = Float(firstValue)!
                let percentVal = val1/100
                lblValue.text = String(percentVal)
                firstValue = String(percentVal)
                secondValue = "0"
                operatorValue = ""
           
        }
        else
        {

                let val1 = Float(secondValue)!
                let percentVal = val1/100
                lblValue.text = String(percentVal)
                firstValue = String(percentVal)
                secondValue = "0"
                operatorValue = ""
        }
        
    }
    
    //division operation
    
    @IBAction func divideClick(_ sender: Any)
    {
        operatorValue = "DIV"
    }
    
    
    @IBAction func sevenCLicked(_ sender: Any)
    {
        checkAndAddVal(val: "7")
    }
    
    @IBAction func eightClicked(_ sender: Any)
    {
        checkAndAddVal(val: "8")
    }
    
    //multiplication operation
    
    @IBAction func multiplyClicked(_ sender: Any)
    {
        operatorValue = "MUL"
    }
    
    
    @IBAction func fourClicked(_ sender: Any)
    
    {
        checkAndAddVal(val: "4")
    }
    
    @IBAction func nineClicked(_ sender: Any)
    {
        checkAndAddVal(val: "9")
    }
    @IBAction func fiveClicked(_ sender: Any)
    {
        checkAndAddVal(val: "5")
    }
    
    @IBAction func sixClicked(_ sender: Any)
    {
        checkAndAddVal(val: "6")
    }
    
    //subtraction operation
    
    @IBAction func substractClicked(_ sender: Any)
    {
        operatorValue = "SUB"
    }
    
    @IBAction func oneClicked(_ sender: Any)
    {
        
        checkAndAddVal(val: "1")
    }
    
    
    func checkAndAddVal(val:String)
    {
        if operatorValue == ""
        {
            if firstValue.count != 9
            {
                if firstValue != "0" && firstValue.count != 0
                {
                    firstValue = firstValue + val
                    lblValue.text = firstValue
                }
                else
                {
                    firstValue =  val
                    lblValue.text = firstValue
                }
            }
            else
            {
                
            }
        }
        else
        {
            if secondValue.count != 9
            {
                if secondValue != "0"  && secondValue.count != 0
                {
                    secondValue = secondValue + val
                    lblValue.text = secondValue
                }
                else
                {
                    secondValue =  val
                    lblValue.text = secondValue
                }
            }
            else
            {
                
            }
        }
    }
    
    
    @IBAction func twoClicked(_ sender: Any)
    {
        checkAndAddVal(val: "2")
    }
    
    @IBAction func threeClicked(_ sender: Any)
    {
        checkAndAddVal(val: "3")
    }
    
    //addition operation
    
    @IBAction func AddClicked(_ sender: Any)
    {
        operatorValue = "ADD"
    }
    
    @IBAction func zeroClicked(_ sender: Any)
    {
       checkAndAddVal(val: "0")
    }
    

    // main function to do the operations using switch case
    
    @IBAction func equalToClicked(_ sender: Any)
    {
        switch operatorValue
        {
        case "ADD":
            
            if isFloat() == true
            {
                let val1 = Float(firstValue)!
                let val2 = Float(secondValue)!
                let val3 = val1 + val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            else
            {
                let val1 = Int(firstValue)!
                let val2 = Int(secondValue)!
                let val3 = val1 + val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            firstValue = "0"
            secondValue = "0"
            operatorValue = ""
        case "SUB":
            
            if isFloat() == true
            {
                let val1 = Float(firstValue)!
                let val2 = Float(secondValue)!
                let val3 = val1 - val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            else
            {
                let val1 = Int(firstValue)!
                let val2 = Int(secondValue)!
                let val3 = val1 - val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            firstValue = "0"
            secondValue = "0"
            operatorValue = ""
        case "MUL":
            
            if isFloat() == true
            {
                let val1 = Double(firstValue)!
                let val2 = Double(secondValue)!
                let val3 = val1 * val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            else
            {
                let val1 = UInt64(firstValue)!
                let val2 = UInt64(secondValue)!
                let val3 = val1 * val2
                lblValue.text = String(val3)
                firstValue = String(val3)
            }
            firstValue = "0"
            secondValue = "0"
            operatorValue = ""
        case "DIV":
            if secondValue == "0"
            {
                lblValue.text = "Error"
                firstValue = "0"
                secondValue = "0"
                operatorValue = ""
            }
            else
            {
                if isFloat() == true
                {
                    let val1 = Float(firstValue)!
                    let val2 = Float(secondValue)!
                    let val3 = val1 / val2
                    lblValue.text = String(val3)
                    firstValue = String(val3)
                }
                else
                {
                    let val1 = Int(firstValue)!
                    let val2 = Int(secondValue)!
                    let val3 = val1 / val2
                    lblValue.text = String(val3)
                    firstValue = String(val3)
                }
            }
            secondValue = "0"
            operatorValue = ""
        default:
            ""
        }
    }
    
    // function to set convert value into decimal part if decimal button is clicked
    
    @IBAction func decimalClicked(_ sender: Any)
    {
        if operatorValue == ""
        {
            if firstValue.contains(".")
            {
                
            }
            else
            {
                checkAndAddVal(val: ".")
            }
        }
        else
        {
            
        }
        
        
    }
    
    
    func isFloat() -> Bool
    {
        if firstValue.contains(".") || secondValue.contains(".")
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    
    func isFloatForOneVal(value:String) -> Bool
    {
        if value.contains(".")
        {
            return true
        }
        else
        {
            return false
        }
    }
}

