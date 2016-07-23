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


@implementation TKTutorialTheme

+ (void)initialize
{
    defaultBackgroundColor = [UIColor whiteColor];
    defaultForegroundColor = [UIColor blackColor];
    defaultFont = [UIFont systemFontOfSize:15.0];
}

+ (TKTutorialTheme *)themeFromDictionary:(NSDictionary *)themeDict
{
    TKTutorialTheme *theme = [[TKTutorialTheme alloc] init];
    id obj;
    
    if ((obj = [themeDict objectForKey:@"backgroundColor"]))
        theme.backgroundColor = (UIColor *)obj;
    if ((obj = [themeDict objectForKey:@"foregroundColor"]))
        theme.foregroundColor = (UIColor *)obj;
    if ((obj = [themeDict objectForKey:@"font"]))
        theme.font = (UIFont *)obj;
    
    return theme;
}


- (instancetype)init
{
    if (self = [super init])
    {
        self.backgroundColor = defaultBackgroundColor;
        self.foregroundColor = defaultForegroundColor;
        self.font = defaultFont;
    }
    
    return self;
}

@end
