//
//  TapViewController.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import Foundation

class TapViewController: UIViewController {

    @IBOutlet weak var b1Button: UIButton!

    @IBAction func b1Tapped(sender: AnyObject) {
    }
    
    @IBAction func b2Tapped(sender: AnyObject) {
    }
    
    @IBAction func b3Tapped(sender: AnyObject) {
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
        
        let tapGestureRecognizer = UITapGestureRecognizer()
        self.b1Button.addGestureRecognizer(tapGestureRecognizer)
        _ = TKTapGestureTutorialView.tapTutorialViewForView(self.b1Button, gesture:tapGestureRecognizer, theme:TKTapGestureTutorialView.defaultTheme(), key:"tapgesturething")
    }
}
