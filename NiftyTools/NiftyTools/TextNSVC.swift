//
//  TextNSVC.swift
//  NiftyTools
//
//  Created by Daniel Wahby on 02/01/2021.
//

import Cocoa

class TextNSVC: NSViewController, NSTextFieldDelegate {
    @IBOutlet weak var textfield: NSTextField!
    @IBOutlet weak var textCount: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfield.delegate = self
        // Do view setup here.
    }
    func controlTextDidChange(_ obj: Notification) {
        textCount.stringValue = "\(textfield.stringValue.count) Characters"
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        if let myViewController = self.storyboard?.instantiateController(withIdentifier: "Main") as? ViewController {
            self.view.window?.contentViewController = myViewController
        }
    }
}
