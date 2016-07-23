//
//  TKTutorialTheme.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum
{
    TKTHEME_BACKGROUNDCOLOR = 0,
    TKTHEME_FOREGROUNDCOLOR,
    TKTHEME_FONT,
    TKTHEME_MARGIN
} TKThemeEnum;

@interface TKTutorialTheme : NSObject

@property (strong) UIColor *backgroundColor;
@property (strong) UIColor *foregroundColor;
@property (strong) UIFont *font;
@property (assign) float margin;

+ (TKTutorialTheme *)defaultTheme;
+ (TKTutorialTheme *)themeFromDictionary:(NSDictionary *)themeDict;

@end
