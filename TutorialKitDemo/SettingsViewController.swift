//
//  SettingsViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var enableTutorialSwitch: UISwitch!
    
    @IBAction func tutorialThemeButtonPressed(sender: AnyObject) {
        print("Tutorial Theme area button pressed")
    }
    
    @IBAction func enableTutorialToggled(sender: AnyObject) {
        print("Enable Tutorial switch toggled to \(enableTutorialSwitch.on)")
    }
    
    @IBAction func resetTutorialSelected(sender: AnyObject) {
        print("Reset Tutorial button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}