//
//  TKBannerTutorialView.m
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/22/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKBannerTutorialView.h"

#import "TKTutorial.h"


@implementation TKBannerTutorialView

+ (TKBannerTutorialView *)tutorialViewForViewController:(UIViewController *)viewController orientation:(TKBannerOrientation)orientation text:(NSString *)text theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;

    CGRect r = CGRectMake(0, 0, viewController.view.bounds.size.width, theme.margin * 2);
    TKBannerTutorialView *tutorialView = [[TKBannerTutorialView alloc] initWithFrame:r];
    
    tutorialView.text = text;
    tutorialView.theme = theme;
    tutorialView.backgroundColor = [UIColor redColor];//theme.backgroundColor;
    [tutorialView setUpTextLabel];
    
    tutorialView.orientation = orientation;
    if (tutorialView.orientation == kTKBannerOrientationBottom)
    {
        r = tutorialView.frame;
        r.origin.y = viewController.view.bounds.size.height - 49 - tutorialView.bounds.size.height;
        tutorialView.frame = r;
    }
    
    [viewController.view addSubview:tutorialView];
    
    return tutorialView;
}

@end
