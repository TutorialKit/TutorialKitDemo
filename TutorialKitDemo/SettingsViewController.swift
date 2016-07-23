//
//  SettingsViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var enableTutorialSwitch: UISwitch!
    
    @IBAction func tutorialThemeButtonPressed(sender: AnyObject) {
        print("Tutorial Theme area button pressed")
    }
    
    @IBAction func enableTutorialToggled(sender: AnyObject) {
        print("Enable Tutorial switch toggled to \(enableTutorialSwitch.on)")
    }
    
    @IBAction func resetTutorialSelected(sender: AnyObject) {
        TKTutorial.resetTutorials()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
}