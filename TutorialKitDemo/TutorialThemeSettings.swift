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
    }
    
}
