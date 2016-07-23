//
//  TKTutorialTheme.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTutorialTheme.h"


static UIColor *defaultBackgroundColor;
static UIColor *defaultForegroundColor;
static UIFont *defaultFont;
static float defaultMargin;


@implementation TKTutorialTheme

+ (void)initialize
{
    defaultBackgroundColor = [UIColor colorWithWhite:0.75 alpha:1.0];
    defaultForegroundColor = [UIColor blackColor];
    defaultFont = [UIFont boldSystemFontOfSize:17.0];
    defaultMargin = 10;
}

+ (TKTutorialTheme *)defaultTheme
{
    TKTutorialTheme *theme = [[TKTutorialTheme alloc] init];
    
    theme.backgroundColor = defaultBackgroundColor;
    theme.foregroundColor = defaultForegroundColor;
    theme.font = defaultFont;
    theme.margin = defaultMargin;
    
    return theme;
}

+ (TKTutorialTheme *)themeFromDictionary:(NSDictionary *)themeDict
{
    TKTutorialTheme *theme = [TKTutorialTheme defaultTheme];
    id obj;
    
    if ((obj = [themeDict objectForKey:@"backgroundColor"]))
        theme.backgroundColor = (UIColor *)obj;
    if ((obj = [themeDict objectForKey:@"foregroundColor"]))
        theme.foregroundColor = (UIColor *)obj;
    if ((obj = [themeDict objectForKey:@"font"]))
        theme.font = (UIFont *)obj;
    if ((obj = [themeDict objectForKey:@"font"]))
        theme.margin = [(NSNumber *)obj floatValue];
    
    return theme;
}

@end
