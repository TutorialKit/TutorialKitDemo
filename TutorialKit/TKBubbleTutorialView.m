//
//  TKBubbleTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKBubbleTutorialView.h"

#import "TKTutorial.h"


@implementation TKBubbleTutorialView

+ (TKBubbleTutorialView *)bubbleTutorialViewForViewController:(UIViewController *)viewController view:(UIView *)view orientation:(TKBubbleOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r = CGRectMake(0, 0, viewController.view.bounds.size.width, theme.margin * 2);
    TKBubbleTutorialView *tutorialView = [[TKBubbleTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];
    
    tutorialView.text = text;
    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    [tutorialView setUpTextLabel];
    
/*    tutorialView.orientation = orientation;
    if (tutorialView.orientation == kTKBannerOrientationBottom)
    {
        r = tutorialView.frame;
        r.origin.y = viewController.view.bounds.size.height;
        if (viewController.tabBarController != nil)
            r.origin.y -= TAB_BAR_HEIGHT;
        tutorialView.frame = r;
    }
    else
    {
        r = tutorialView.frame;
        r.origin.y = CLOCK_BAR_HEIGHT - tutorialView.bounds.size.height;
        tutorialView.frame = r;
    }
    
    [viewController.view addSubview:tutorialView];
    
    CGRect newFrame = tutorialView.frame;
    if (tutorialView.orientation == kTKBannerOrientationBottom)
        newFrame.origin.y -= tutorialView.bounds.size.height;
    else
        newFrame.origin.y += tutorialView.bounds.size.height;
    
    [UIView animateWithDuration:0.5 animations:^(void)
     {
         tutorialView.frame = newFrame;
     }];
    */
    return tutorialView;
}

- (void)end
{
    [UIView animateWithDuration:0.25 animations:^(void)
     {
         self.alpha = 0;
     }
     completion:^(BOOL finished)
     {
         [self removeFromSuperview];
     }];
}

@end
