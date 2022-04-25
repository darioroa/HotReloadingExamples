//
//  ViewController.swift
//  HotReloadingAppKitExample
//
//  Created by Dario Roa on 25/4/22.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window?.backgroundColor = .selectedContentBackgroundColor
    }
    
    override var nibName: NSNib.Name? {
        return nil
    }
    
    override func loadView() {
        self.view = NSView(frame: NSRect(x: 0, y: 0, width: 480, height: 270))
    }
}
