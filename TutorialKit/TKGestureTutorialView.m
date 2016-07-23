//
//  TKGestureTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKGestureTutorialView.h"

#import "TKTutorial.h"


@implementation TKGestureTutorialView

+ (TKGestureTutorialView *)tutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r;
    TKGestureTutorialView *tutorialView = [[TKGestureTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];

    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    
    [view addSubview:tutorialView];
    
//    CGRect newFrame = tutorialView.frame;
    
    
    return tutorialView;
}

- (void)end
{



}

- (void)drawRect:(CGRect)rect
{
    
}

@end
