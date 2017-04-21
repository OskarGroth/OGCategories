//
//  ViewController.swift
//  TestApp
//
//  Created by Oskar Groth on 2017-04-10.
//  Copyright © 2017 Oskar Groth. All rights reserved.
//

import Cocoa
import OGCategories

class ViewController: NSViewController {

    @IBOutlet weak var sampleLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func otherButtonPress(_ sender: Any) {

    }
    
    @IBAction func buttonPress(_ sender: Any) {
        sampleLabel.setStringValueAnimated(string: "Animated!")
        perform(#selector(ViewController.timer), with: nil, afterDelay: 5)
    }
    
    func timer() {
        print("Label now: \(sampleLabel.stringValue)")
    }

}

