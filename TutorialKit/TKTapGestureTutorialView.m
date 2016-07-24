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

+ (TKTapGestureTutorialView *)tapTutorialViewForView:(UIView *)view gesture:(UIGestureRecognizer *)gestureRecognizer theme:(TKTutorialTheme *)theme key:(NSString *)key
{
    if ([TKTutorial keyUsed:key])
        return nil;
    [TKTutorial setKey:key];
    
//    CGPoint center = view.center;
    CGRect r = CGRectMake((view.bounds.size.width - GESTURE_DOT_SIZE) / 2, (view.bounds.size.height - GESTURE_DOT_SIZE) / 2, GESTURE_DOT_SIZE, GESTURE_DOT_SIZE);
    TKTapGestureTutorialView *tutorialView = [[TKTapGestureTutorialView alloc] initWithFrame:r];
    [TKTutorialView addTutorialView:tutorialView forKey:key];
    
    tutorialView.gestureRecognizer = gestureRecognizer;
    [gestureRecognizer addTarget:tutorialView action:@selector(end)];
    
/*    CGRect interiorViewRect = CGRectInset(r, 5, 5);
    interiorViewRect.origin = CGPointMake(5, 5);
    tutorialView.interiorView = [[UIView alloc] initWithFrame:interiorViewRect];
    [tutorialView addSubview:tutorialView.interiorView];*/
    tutorialView.alpha = 0.0;
    tutorialView.backgroundColor = [UIColor clearColor];

    tutorialView.theme = theme;
    [view addSubview:tutorialView];

    [UIView animateWithDuration:0.25 animations:^(void)
     {
         tutorialView.alpha = 0.5;
     }];

    return tutorialView;
}

- (void)end
{
    [self.gestureRecognizer removeTarget:self action:@selector(end)];
    [self removeFromSuperview];
}

@end
