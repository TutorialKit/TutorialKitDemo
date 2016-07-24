//
//  BalloonViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import UIKit

class BalloonViewController: UIViewController {

    @IBOutlet weak var leftButton: UIButton!
    
    @IBAction func leftButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func rightButtonPressed(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        _ = TKBubbleTutorialView(forViewController:self, view:self.leftButton, orientation:kTKBubbleOrientationBelow, text:"This buttton does blah blah blah!", theme:TKBubbleTutorialView.defaultTheme(), key:"Bubble button left")

    }
}