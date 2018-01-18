//
//  ViewController.swift
//  DPrint
//
//  Created by GErakleous on 01/18/2018.
//  Copyright (c) 2018 GErakleous. All rights reserved.
//

import UIKit
import DPrint

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		
		DPrint.log("blah", ["item", "item 1"], ["item": 6, "item2": 8], 9)

		DPrint.log("Testing log")
		DPrint.logText([2, 4], "text")
		DPrint.logDebug("A debug message")
		DPrint.logError("An error message")
		DPrint.logFixMe("Fix me please")
		DPrint.logWarning("Please be careful")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

