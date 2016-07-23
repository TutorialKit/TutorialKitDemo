//
//  HomeViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var iWinButton: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        iWinButton.enabled = true
        print("Button pressed")
    }
    
    @IBAction func iWinButtonPressed(sender: AnyObject) {
        print("I Win button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iWinButton.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
