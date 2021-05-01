//
//  ViewController.swift
//  NiftyTools
//
//  Created by Daniel Wahby on 02/01/2021.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var buttonBox: NSBox!
    @IBAction func textCountPressed(_ sender: Any) {
        if let myViewController = self.storyboard?.instantiateController(withIdentifier: "TextCount") as? TextNSVC {
            self.view.window?.contentViewController = myViewController
        }
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

    @objc func changeScene() {
        if let myViewController = self.storyboard?.instantiateController(withIdentifier: "TextCount") as? TextNSVC {
            self.view.window?.contentViewController = myViewController
        }
        


    }
}

