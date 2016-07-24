//
//  TKTutorialView.h
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TKTutorialTheme.h"


@interface TKTutorialView : UIView

@property (strong) TKTutorialTheme *theme;

+ (void)addTutorialView:(TKTutorialView *)tutorialView forKey:(NSString *)key;
+ (void)setKey:(NSString *)key;
+ (TKTutorialTheme *)defaultTheme;

- (void)end;

@end
