//
//  TKBannerTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKBannerTutorialView.h"

#import "TKTutorial.h"


#define TAB_BAR_HEIGHT          (49)
#define CLOCK_BAR_HEIGHT        (20)


@implementation TKBannerTutorialView

+ (TKBannerTutorialView *)tutorialViewForViewController:(UIViewController *)viewController orientation:(TKBannerOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;

    CGRect r = CGRectMake(0, 0, viewController.view.bounds.size.width, theme.margin * 2);
    TKBannerTutorialView *tutorialView = [[TKBannerTutorialView alloc] initWithFrame:r];
    
    tutorialView.text = text;
    tutorialView.theme = theme;
    tutorialView.backgroundColor = tutorialView.theme.backgroundColor;
    [tutorialView setUpTextLabel];
    
    tutorialView.orientation = orientation;
    if (tutorialView.orientation == kTKBannerOrientationBottom)
    {
        r = tutorialView.frame;
        r.origin.y = viewController.view.bounds.size.height - tutorialView.bounds.size.height;
        if (viewController.tabBarController != nil)
            r.origin.y -= TAB_BAR_HEIGHT;
        tutorialView.frame = r;
    }
    else
    {
        r = tutorialView.frame;
        r.origin.y = CLOCK_BAR_HEIGHT;
        tutorialView.frame = r;
    }
    
    [viewController.view addSubview:tutorialView];
    
    return tutorialView;
}

@end
