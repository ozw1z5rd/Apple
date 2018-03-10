//
//  ViewController.swift
//  MyDemo
//
//  Created by bigfoot on 16/11/17.
//  Copyright © 2017 bigfoot. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var buttonOutletCancella: NSButtonCell!
    
    @IBOutlet weak var textRigaDiTest: NSTextField!
    
    @IBAction func buttonActionImposta(_ sender: Any) {
        textRigaDiTest.stringValue = "Valore impostato"
    }

    @IBAction func buttonActionCancella(_ sender: Any) {
        textRigaDiTest.stringValue=""
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

