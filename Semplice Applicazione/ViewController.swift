//
//  ViewController.swift
//  Semplice Applicazione
//
//  Created by Alessio Palma on 15/11/2017.
//  Copyright © 2017 Alessio Palma. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var memoria : Float = 0.0
    var mode = false
    var lastCommand : String = ""
    var op = false
    
    @IBOutlet weak var TextCasellaInput: NSTextField!
    
    
    @IBAction func ButtonPremi(_ sender: Any) {
        processCommand()
        lastCommand = ""
        op = true
    }
    
    func appendDigit( digit : String ) {
        if TextCasellaInput.stringValue == "0" || op {
            TextCasellaInput.stringValue = digit
            op = false
            return
        }
        TextCasellaInput.stringValue += digit
    }
    
    func processCommand( ) {
        var command = lastCommand
        var valueOnDisplay : Float = Float(TextCasellaInput.stringValue)!
        var valueInMemory : Float = 0.0
        var result : Float = 0.0
    
        if !mode {
            memoria = Float(TextCasellaInput.stringValue)!
            //TextCasellaInput.stringValue = "0"
            op = true
            mode = true
            return
        } else {
            valueInMemory = memoria
        }
        
        switch command {
        case "+":
            result = valueOnDisplay + valueInMemory
        case "-":
            result =  -valueOnDisplay + valueInMemory
        case "/":
            result =  valueInMemory / valueOnDisplay
        case "x":
            result = valueOnDisplay * valueInMemory
        default:
            result = valueOnDisplay
        }
        TextCasellaInput.stringValue = String(result)
        mode = false
        op = true
    }
  
    @IBAction func ButtonClear(_ sender: Any) {
        memoria = 0
        lastCommand = ""
        TextCasellaInput.stringValue = "0"
        mode = false
    }
    @IBAction func ButtonDiviso(_ sender: Any) {
        lastCommand = "/"
        processCommand()
    }
    @IBAction func ButtonPer(_ sender: Any) {
        lastCommand = "x"
        processCommand()
    }
    @IBAction func ButtonMeno(_ sender: Any) {
        lastCommand = "-"
        processCommand()
    }
    @IBAction func ButtonPiu(_ sender: Any) {
        lastCommand="+"
        processCommand()
    }
    @IBAction func ButtonZero(_ sender: Any) {
        appendDigit(digit :  "0")
    }
    @IBAction func ButtonUno(_ sender: Any) {
        appendDigit(digit :  "1")
    }
    @IBAction func ButtonDue(_ sender: Any) {
        appendDigit(digit :  "2")
    }
    @IBAction func ButtonTre(_ sender: Any) {
        appendDigit( digit : "3")
    }
    @IBAction func ButtonQuattro(_ sender: Any) {
        appendDigit( digit : "4")
    }
    @IBAction func ButtonCinque(_ sender: Any) {
        appendDigit( digit : "5")
    }
    @IBAction func ButtonSei(_ sender: Any) {
        appendDigit( digit : "6")
    }
    @IBAction func ButtonSette(_ sender: Any) {
        appendDigit( digit : "7")
    }
    @IBAction func ButtonOtto(_ sender: Any) {
        appendDigit( digit : "8")
    }
    @IBAction func ButtonNove(_ sender: Any) {
        appendDigit( digit : "9")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

