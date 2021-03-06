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
        TKTutorialView.setKey("Enable I win")
    }
    
    @IBAction func iWinButtonPressed(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iWinButton.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        iWinButton.enabled = false
        
        let theme = TKBannerTutorialView.defaultTheme()
        // get theme colors from demo app (setting)
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let themeSettings = appDelegate.themeSettings
        theme.foregroundColor = themeSettings.themeForegroundColor
        theme.backgroundColor = themeSettings.themeBackgroundColor
        _ = TKBannerTutorialView(forViewController:self, orientation:kTKBannerOrientationBottom, text:"Press Button!", theme:theme, key:"Enable I win")
    }
}

