//
//  ViewController.swift
//  SwitchAction
//
//  Created by Jeffrey on 9/3/15.
//  Copyright (c) 2015 Jeffrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var ourSwitch : UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ourSwitch.addTarget(self, action: Selector("switchChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    func switchChanged(myswitch: UISwitch) {
        if (myswitch.on) {
            label.text = "It is on"
        } else {
            label.text = "It is off"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

