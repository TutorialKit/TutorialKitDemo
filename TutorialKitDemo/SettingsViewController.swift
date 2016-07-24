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
    @IBOutlet weak var tableView: UITableView!
    
    let themeNames = ["49ers", "Raiders", "Vikings"]
    let themeFontColors = [
        "49ers": UIColor(red: 191/255, green: 154/255, blue: 76/255, alpha: 1),
        "Raiders": UIColor(red: 214/255, green: 214/255, blue: 214/255, alpha: 1),
        "Vikings": UIColor(red: 255/255, green: 194/255, blue: 15/255, alpha: 1)
    ]
    let themeBackgroundColors = [
        "49ers": UIColor(red: 165/255, green: 3/255, blue: 16/255, alpha: 1),
        "Raiders": UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1),
        "Vikings": UIColor(red: 26/255, green: 6/255, blue: 91/255, alpha: 1)
    ]
    
    var tutorialTheme = "49ers"
    
    @IBAction func enableTutorialToggled(sender: AnyObject) {
        print("Enable Tutorial switch toggled to \(enableTutorialSwitch.on)")
    }
    
    @IBAction func resetTutorialSelected(sender: AnyObject) {
        TKTutorial.resetTutorials()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        colorTutorialThemeCells()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.themeNames.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        
        cell.textLabel?.text = self.themeNames[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType != .Checkmark {
                
                // deselect other selected theme
                let indexPathDeselect = NSIndexPath(forRow: themeNames.indexOf(tutorialTheme)!, inSection: 0)
                let cell2deselect = tableView.cellForRowAtIndexPath(indexPathDeselect)
                cell2deselect!.accessoryType = .None

                // select new theme for home screen
                cell.accessoryType = .Checkmark
                tutorialTheme = (cell.textLabel?.text)!
                let theme = TKBannerTutorialView.defaultTheme()
                theme.foregroundColor = UIColor.yellowColor()
                theme.backgroundColor = UIColor.blackColor()
                _ = TKBannerTutorialView(forViewController:self, orientation:kTKBannerOrientationBottom, text:"Press Button!", theme:theme, key:"Enable I win")
            }
        }
    }
    
    func colorTutorialThemeCells() {
        let section = 0
        for row in 0 ... self.tableView.numberOfRowsInSection(section) - 1 {
            let indexPath = NSIndexPath(forRow: row, inSection: section)
            let cell = self.tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!
            cell.textLabel?.textColor = themeFontColors[(cell.textLabel?.text!)!]
            cell.textLabel?.backgroundColor = themeBackgroundColors[(cell.textLabel?.text!)!]
            let backgroundView = UIView()
            backgroundView.backgroundColor = themeBackgroundColors[(cell.textLabel?.text!)!]
            cell.selectedBackgroundView = backgroundView
            if cell.textLabel?.text! == tutorialTheme {
                cell.accessoryType = .Checkmark
            }
        }
    }
    
}