//
//  TutorialThemeSettings.swift
//  TutorialKitDemo
//
//  Created by Lee Cooper on 7/24/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

import Foundation

class TutorialThemeSettings {
    
    var themeForegroundColor = UIColor.yellowColor()
    var themeBackgroundColor = UIColor.blackColor()
    
    init() {

        let theme = TKBannerTutorialView.defaultTheme()
        themeForegroundColor = theme.foregroundColor
        themeBackgroundColor = theme.backgroundColor

        // check to see if themes have been previously saved; if not, use defaults
        //        let prefs = NSUserDefaults.standardUserDefaults()
        //
        //        prefs.setValue("Berlin", forKey: "userCity")
        //        //This code saves the value "Berlin" to a key named "userCity".
        
        //        // reading data
        //        if let city = prefs.stringForKey("userCity"){
        //            println("The user has a city defined: " + city)
        //        }else{
        //            //Nothing stored in NSUserDefaults yet. Set a value.
        //            prefs.setValue("Berlin", forKey: "userCity")
        //        }
        
//        
//        let prefs = NSUserDefaults.standardUserDefaults()
//        if let color = prefs.stringForKey("foreground") {
//            themeForegroundColor = color
//        } else {
//            //Nothing stored in NSUserDefaults yet. Set a value.
//            themeForegroundColor = theme.foregroundColor
//        }
        
    }
    
}
