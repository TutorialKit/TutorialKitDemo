//
//  TKTutorialTheme.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TKTutorialTheme : NSObject

@property (strong) UIColor *backgroundColor;
@property (strong) UIColor *foregroundColor;
@property (strong) UIFont *font;
@property (assign) float margin;

+ (TKTutorialTheme *)themeFromDictionary:(NSDictionary *)themeDict;

@end
