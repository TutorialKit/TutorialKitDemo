//
//  TKTapGestureTutorialView
//  TutorialKitDemo
//
//  Created by Tim Kokesh on 7/23/16.
//  Copyright © 2016 Aqueous Software. All rights reserved.
//

#import "TKTapGestureTutorialView.h"

#import "TKTutorial.h"


@implementation TKTapGestureTutorialView

+ (TKTapGestureTutorialView *)tutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
    CGRect r;
    TKTapGestureTutorialView *tutorialView = [[TKTapGestureTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];

    tutorialView.theme = theme;
    
    [view addSubview:tutorialView];
    
//    CGRect newFrame = tutorialView.frame;
    
    
    return tutorialView;
}

- (void)end
{
    
}

@end
